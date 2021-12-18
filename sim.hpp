#pragma once
#include <assert.h>
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
#include "fpu.hpp"
#include "cache.hpp"

void output_cur_info(CPU&, MEMORY_PRO&);

void notify_load(CPU& cpu, MEMORY_PRO& mem, int d, bool gpr){
    output_cur_info(cpu, mem);
    if(gpr) std::cout << "アドレス:" << mem.notify << " から"<< "gpr[" << d << "] に " << cpu.gpr[d] << " がロードされました\n";
    else std::cout << "アドレス:" << mem.notify << " から"<<  "fpr[" << d << "] に " << cpu.fpr[d] << " がロードされました\n";
    std::cout << '\n';
}
void notify_store(CPU& cpu, MEMORY_PRO& mem, int d, bool gpr){
    output_cur_info(cpu, mem);
    if(gpr) std::cout << "gpr[" << d << "]からアドレス:" << mem.notify << "に " << cpu.gpr[d] << " がストアされました\n";
    else std::cout << "fpr[" << d << "]からアドレス:" << mem.notify << "に " << cpu.fpr[d] << " がストアされました\n";
    std::cout << '\n';
}


INSTR instr_fetch(CPU& cpu, const MEMORY &mem){
    assert(cpu.pc < (unsigned int)mem.index);
    unsigned int pc = addr_to_index(cpu.pc);
    cpu.pc += 4;
    return mem.instr[pc];
}


bool exec(CPU& cpu, MEMORY_PRO& mem, FPU& fpu, CACHE& cache){
    auto[opc, d, a, b] = instr_fetch(cpu, mem);
    int c, bi, ea, tmp;
    [[maybe_unused]] int bo;
    bool cond_ok, ctr_ok, ovf = false;
    switch(opc){
        case ADD:
            cpu.gpr[d] = cpu.gpr[a] + cpu.gpr[b];
            return false;
        case SUB:
            cpu.gpr[d] = cpu.gpr[a] - cpu.gpr[b];
            return false;
        case ADDI:
            cpu.gpr[d] = (a ? cpu.gpr[a] : 0) + exts(b);
            return false;
        case ADDIS:
            cpu.gpr[d] = (a ? cpu.gpr[a] : 0) + int(b << 16);
            return false;
        case CMPWI:
            c = 0;
            tmp = exts(b);
            if(cpu.gpr[a] < tmp) c = 0b100;
            else if(cpu.gpr[a] > tmp) c = 0b010;
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
        case B:
            cpu.pc = d;
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
        case BGE:
            bi = d*4;
            cond_ok = kth_bit(cpu.cr, bi);
            if(!cond_ok) cpu.pc = a;
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
            //print_binary_int(cpu.lr);
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
            ea = (b ? cpu.gpr[b] : 0) + exts(a);
            cpu.gpr[d] = cache.lw(ea, mem);
            if(ea == mem.notify) notify_load(cpu, mem, d, 1);
            return false;
        case LWZU:
            ea = cpu.gpr[b] + exts(a);
            cpu.gpr[d] = cache.lw(ea, mem);
            if(ea == mem.notify) notify_load(cpu, mem, d, 1);
            cpu.gpr[b] = ea;
            return false;
        case STW:   
            ea = (b ? cpu.gpr[b] : 0) + exts(a);
            cache.swi(ea, mem, cpu.gpr[d]);
            if(ea == mem.notify) notify_store(cpu, mem, d, 1);
            return false;
        case STWU:
            ea = cpu.gpr[b] + exts(a);
            cache.swi(ea, mem, cpu.gpr[d]);
            if(ea == mem.notify) notify_store(cpu, mem, d, 1);
            cpu.gpr[b] = ea;
            return false;
        case MFSPR:
            assert((a >> 5) == 0);
            if(a == 0b00001) cpu.gpr[d] = cpu.xer;
            else if(a == 0b01000) cpu.gpr[d] = cpu.lr;
            else if(a == 0b01001) cpu.gpr[d] = cpu.ctr;
            else{
                cpu.pc -= 4;
                output_cur_info(cpu, mem);
                assert(false);
            }
            return false;
        case MR:
            cpu.gpr[d] = cpu.gpr[a];
            return false;
        case MTSPR:
            assert((d >> 5) == 0);
            if(d == 0b00001) cpu.xer = cpu.gpr[a];
            else if(d == 0b01000) cpu.lr = cpu.gpr[a];
            else if(d == 0b01001) cpu.ctr = cpu.gpr[a];
            else{
                cpu.pc -= 4;
                output_cur_info(cpu, mem);
                assert(false);
            }
            return false;
        case XORIS:
            cpu.gpr[d] = cpu.gpr[a] ^ (b << 16);
            return false;
        case FCTIWZ:
            cpu.gpr[d] = int(std::trunc(cpu.fpr[a]));
            return false;
        case FCFIW:
            cpu.fpr[d] = float(cpu.gpr[a]);
            return false;
        case IN:
            cpu.gpr[d] = mem.sld[mem.sldpointer++];
            return false;
        case OUT: // imm + 1 byte目はどこ
            a = 3 - a;
            cpu.write(segment(cpu.gpr[d], 8*a, 8*a + 7));
            return false;
        case FLUSH: // 
            cpu.flush();
            return false;
        case ORI:
            cpu.gpr[d] = cpu.gpr[a] | (b & bitmask(16));
            return false;
        case FABS:
            cpu.fpr[d] = std::abs(cpu.fpr[a]); // 多分これで問題ないよね...
            return false;
        case FADD:
            cpu.fpr[d] = TasukuFukami::fadd(cpu.fpr[a], cpu.fpr[b]);
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
            cpu.fpr[d] = TasukuFukami::fdiv(cpu.fpr[a], cpu.fpr[b], fpu, ovf);
            if(ovf){
                cpu.pc -= 4;
                output_cur_info(cpu, mem);
                assert(false);
            }
            return false;
        case FMR:
            cpu.fpr[d] = cpu.fpr[a];
            return false;
        case FMUL:
            cpu.fpr[d] = TasukuFukami::fmul(cpu.fpr[a], cpu.fpr[b]);
            return false;
        case FNEG:
            cpu.fpr[d] = -cpu.fpr[a];
            return false;
        case FSUB:
            cpu.fpr[d] = TasukuFukami::fsub(cpu.fpr[a], cpu.fpr[b]);
            return false;
        case FSQRT:
            cpu.fpr[d] = TasukuFukami::fsqrt(cpu.fpr[d], fpu);
            return false;
        case FFLOOR: // stdを使ってます
            cpu.fpr[d] = std::floor(cpu.fpr[d]);
            return false;
        case FHALF: // なにこれ
            cpu.fpr[d] = cpu.fpr[a] / 2.0;
            return false;
        case FCOS: // stdを使ってる
            cpu.fpr[d] = std::cos(cpu.fpr[a]);
            return false;
        case FSIN: // stdを使ってる
            cpu.fpr[d] = std::sin(cpu.fpr[a]);
            return false;
        case FATAN:
            cpu.fpr[d] = TasukuFukami::atan(cpu.fpr[d], fpu);
            return false;
        case LFS:
            tmp = (b == 0 ? 0 : cpu.gpr[b]);
            ea = tmp + exts(a);
            cpu.fpr[d] = bit_cast<float, int>(cache.lw(ea, mem));
            if(ea == mem.notify) notify_load(cpu, mem, d, 0);
            return false;
        case LFSX:
            tmp = (a == 0 ? 0 : cpu.gpr[a]);
            ea = tmp + cpu.gpr[b];
            cpu.fpr[d] = bit_cast<float, int>(cache.lw(ea, mem));
            if(ea == mem.notify) notify_load(cpu, mem, d, 0);
            return false;
        case STFSX:
            tmp = (a == 0 ? 0 : cpu.gpr[a]);
            ea = tmp + cpu.gpr[b];
            cache.swf(ea, mem, cpu.fpr[d]);
            if(ea == mem.notify) notify_store(cpu, mem, d, 0);
            return false;
        case LWZX:
            tmp = (a == 0 ? 0 : cpu.gpr[a]);
            ea = tmp + cpu.gpr[b];
            cpu.gpr[d] = cache.lw(ea, mem);
            if(ea == mem.notify) notify_load(cpu, mem, d, 1);
            return false;
        case MULLI:
            cpu.gpr[d] = int(((long long)cpu.gpr[a] * (long long)b) & bitmask(32));
            return false;
        case MULHWU:
            cpu.gpr[d] = int(((((unsigned long long)cpu.gpr[a] & bitmask(32)) * ((unsigned long long)cpu.gpr[b] & bitmask(32)))) >> 32);
            return false;
        case SLWI:
            cpu.gpr[d] = (cpu.gpr[a] & bitmask(32 - b)) << b;
            return false;
        case SRWI:
            cpu.gpr[d] = (cpu.gpr[a] >> b) & bitmask(32 - b);
            return false;
        case STFS: // LFSと同じ
            tmp = (b == 0 ? 0 : cpu.gpr[b]);
            ea = tmp + exts(a);
            cache.swf(ea, mem, cpu.fpr[d]);
            if(ea == mem.notify) notify_store(cpu, mem, d, 0);
            return false;
        case STWX:
            tmp = (a == 0 ? 0 : cpu.gpr[a]);
            ea = cpu.gpr[b] + tmp;
            cache.swi(ea, mem, cpu.gpr[d]);
            if(ea == mem.notify) notify_store(cpu, mem, d, 1);
            return false;
        case HALT:
            return true;
        default:
            cpu.pc -= 4;    
            output_cur_info(cpu, mem);
            warning(opcode_to_string(opc));
            assert(false);
            return false;
    }
}

int simulate_whole(CPU& cpu, MEMORY_PRO &mem, FPU& fpu, CACHE& cache){
    while(!exec(cpu, mem, fpu, cache));
    std::cerr << "program finised!" << std::endl;
    return 0;
}

void show_what(SHOW& ss, const std::string& s){
    std::string garbage;
    for(const char& c : s){
        if(c == 's') ss.next = false;
        else if(c == 'h') ss.help = 1;
        else if(c == 'S'){
            ss.S = true;
            std::cout << "何ステップ進めますか?(ex: 25)" << std::endl;
            console_B();
            std::cin >> ss.Sval;
            console_E();
            std::getline(std::cin, garbage);
        }
        else if(c == 'M'){
            ss.M = true;
            std::cout << "メモリアドレスの範囲をbyte単位で指定してください(ex: 8-100, 200-300)" << std::endl;
            console_B();
            std::string t; std::getline(std::cin, t);
            auto res = remove_chars(t, " -,");
            for(int i = 0; i < (int)res.size() / 2; i++) ss.Maddr.emplace_back(stoi(res[2*i]), stoi(res[2*i + 1]));
            console_E();
        }
        else if(c == 'm'){
            ss.m = true;
            std::cout << "メモリアドレスをbyte単位で指定してください(ex: 100, 12, 300)" << std::endl;
            console_B();
            std::string t; std::getline(std::cin, t);
            auto res = remove_chars(t, " ,");
            for(int i = 0; i < (int)res.size(); i++) ss.maddr.emplace_back(stoi(res[i]));
            console_E();
        }
        else if(c == 'C'){
            ss.cache = true;
            std::cout << "表示するキャッシュのインデックスを指定してください(ex: 0, 3, 10)(max:" << CACHE_LINE_NUM - 1 << ")" << std::endl;
            console_B();
            std::string t; std::getline(std::cin, t);
            console_E();
            auto res = remove_chars(t, " ,");
            for(int i = 0; i < (int)res.size(); i++) ss.index.emplace_back(stoi(res[i]));
        }
        else if(c == 'P'){
            ss.Point = true;
            std::cout << "ファイル名と行数(ex: libmincaml.S, 55) または ラベル名(ex: min_caml_print_int)を入力してください" << std::endl;
            console_B();
            std::string t; std::getline(std::cin, t);
            console_E();
            auto res = remove_chars(t, " ,");
            if(res.size() == 2){
                ss.bpoint.first = res[0];
                ss.bpoint.second = stoi(res[1]);
            }
            else{
                ss.bpoint.first = res[0];
                ss.bpoint.second = -1;
            }
        }
        else if(c == 'N'){
            ss.Notify = 1;
            std::cout << "通知したいメモリアドレスを入力してください(ex 60360, 100000)" << std::endl;
            console_B();
            std::string t; std::getline(std::cin, t);
            console_E();
            auto res = remove_chars(t, " ,");
            for(int i = 0; i < (int)res.size(); i++){
                ss.nval.push_back(stoi(res[i]));
            }
        }
        else if(c == 'B') ss.B = true;
        else if(c == 'F') ss.F = true;
        else if(c == 'g') ss.gr = true;
        else if(c == 'f') ss.fr = true;
        else if(c == 'c') ss.cr = true;
        else if(c == 't') ss.ctr = true;
        else if(c == 'l') ss.lr = true;
    }
}

void output_cur_info(CPU& cpu, MEMORY_PRO &mem){
    std::cout << mem.cnt << "命令実行済" << std::endl;
    auto it = mem.inv.upper_bound(cpu.pc);
    --it;
    auto[id, line] = mem.FL[addr_to_index(cpu.pc)];
    std::cout << "\033[1;31mFILE: \033[m" << mem.file[id] << "\n\033[1;31mLINE:\033[m " << line << std::endl;
    std::cout << "\033[1;31mLABEL:\033[m " << it->second << std::endl;
}

int simulate_step(CPU& cpu, MEMORY_PRO &mem, OPTION& option, FPU& fpu, CACHE_PRO& cache){
    std::string s;
    while(console_B(), std::getline(std::cin, s)){
        console_E();
        if(s.size() == 0) continue;
        SHOW ss;
        show_what(ss, s);
        if(ss.help){   
            std::cout << "s : 1ステップ進める\n";
            std::cout << "S : nステップ進める\n"; 
            std::cout << "g : 汎用をレジスタ表示\n";
            std::cout << "f : 浮動小数点レジスタを表示\n";
            std::cout << "c : crを表示\n";
            std::cout << "t : ctrを表示\n";
            std::cout << "l : lrを表示\n";
            std::cout << "m : メモリアドレス n 周辺を表示\n";
            std::cout << "M : メモリアドレス a-b を表示\n";
            std::cout << "C : nライン目のキャッシュを表示\n";
            std::cout << "P : ブレイクポイント(file名,行数)/(ラベル名)の設定" << std::endl;
        }
        if(ss.gr) cpu.show_gpr();
        if(ss.fr) cpu.show_fpr();
        if(ss.lr) cpu.show_lr();
        if(ss.cr) cpu.show_cr();
        if(ss.ctr) cpu.show_ctr();
        if(ss.m || ss.M){
            mem.show_memory(ss);
            cache.show_cache(ss, mem);
        }
        if(ss.Notify){ // とりあえず1つ
            for(int addr : ss.nval) mem.notify = addr;
            std::cout << "アドレス:" << mem.notify << " を追跡します" << std::endl;
        }
        if(ss.cache){
            for(int ind : ss.index){
                cache.show_cache_line(ind, mem);
                std::cout << '\n';
            }
        }
        if(ss.label){
            std::cout << "アドレス: " << ss.laddr << " のラベルは ";
            if(mem.inv.count(ss.laddr)) std::cout << mem.inv[ss.laddr] << " です" << std::endl;
            else std::cout << "存在しません" << std::endl;
        }
        if(ss.S){
            bool da = false, db = false;
            std::swap(option.display_assembly, da);
            std::swap(option.display_binary, db);
            for(int i = 0; i < ss.Sval; i++){
                mem.cnt++;
                if(exec(cpu, mem, fpu, cache)){
                    std::cout << "program finished!" << std::endl;
                    return 0;
                }
            }
            std::swap(option.display_assembly, da);
            std::swap(option.display_binary, db);
            std::cout << ss.Sval << " steps finished!" << std::endl;
            ss.next = true;
        }
        if(ss.B){
            std::cout << "send buffer:" << std::endl;
            cpu.show_sendbuf();
        }
        if(ss.F){
            std::ofstream wf("flushed.txt");
            for(int i = 0; i < (int)cpu.flushed.size(); i++) wf << cpu.flushed[i];
            cpu.flushed.clear();
            std::cout << "flushed.txtを確認してください" << std::endl;
        }
        if(ss.Point){
            bool da = false, db = false;
            std::swap(option.display_assembly, da);
            std::swap(option.display_binary, db);
            std::pair<int, int> p;
            p.second = ss.bpoint.second;
            for(int i = 0; i < (int)mem.file.size(); i++) if(mem.file[i] == ss.bpoint.first) p.first = i;
            if(p.second >= 0){
                while(1){
                    mem.cnt++;
                    if(mem.FL[addr_to_index(cpu.pc)] == p) break;
                    if(exec(cpu, mem, fpu, cache)){
                        std::cout << "program finished!" << std::endl;
                        return 0;
                    }
                }
            }
            else{
                if(ss.bpoint.first.back() == ':') ss.bpoint.first.pop_back();
                if(!mem.lbl.count(ss.bpoint.first)){
                    std::cout << "No such label" << std::endl;
                    continue;
                } 
                ss.bpoint.second = mem.lbl[ss.bpoint.first];
                while(1){
                    mem.cnt++;
                    if(cpu.pc == (unsigned int)ss.bpoint.second) break;
                    if(exec(cpu, mem, fpu, cache)){
                        std::cout << "program finished!" << std::endl;
                        return 0;
                    }
                }
            }
            std::cout << "終了した命令数と次に実行する命令:\n";
            output_cur_info(cpu, mem);
            std::swap(option.display_assembly, da);
            std::swap(option.display_binary, db);
        }
        if(ss.next) continue;
        mem.cnt++;
        output_cur_info(cpu, mem);
        auto[opc, d, a, b] = mem.instr[addr_to_index(cpu.pc)];
        if(option.display_assembly) show_instr(mem, opc, d, a, b); 
        if(option.display_binary) show_instr_binary(opc, d, a, b);
        if(exec(cpu, mem, fpu, cache)){
            std::cout << "program finished!" << std::endl;
            return 0;
        }
    }
    return 0;
}


void execution(CPU& cpu, MEMORY_PRO& mem_pro, OPTION& option, FPU& fpu, CACHE_PRO& cache_pro){
    if(option.exec_mode == 0){
        CACHE cache = (CACHE)cache_pro;
        simulate_whole(cpu, mem_pro, fpu, cache);
    }
    else if(option.exec_mode == 1) simulate_step(cpu, mem_pro, option, fpu, cache_pro);
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
                if(opc == NOT_INSTR) d = mem.data[i];
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