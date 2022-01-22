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
#include "sim.hpp"

void output_cur_info(CPU&, MEMORY_PRO&, OPTION&, bool next=false);

void notify_load(CPU& cpu, MEMORY_PRO& mem, OPTION& option, int d, bool gpr){
    cpu.pc -= 4;
    output_cur_info(cpu, mem, option);
    cpu.pc += 4;
    if(gpr) std::cout << "\033[33mロード:\n" << "gpr[" << d << "] = " << cpu.gpr[d] << " from " << "mem[" << mem.notify << "]\033[m\n";
    else std::cout << "\033[33mロード:\n" << "fpr[" << d << "] = " << cpu.fpr[d] << " from " << "mem[" << mem.notify << "]\033[m\n";
    std::cout << '\n';
}
void notify_store(CPU& cpu, MEMORY_PRO& mem, OPTION& option, int d, bool gpr){
    cpu.pc -= 4;
    output_cur_info(cpu, mem, option);
    cpu.pc += 4;
    if(gpr) std::cout << "\033[32mストア:\n" << "mem[" << mem.notify << "] = " << cpu.gpr[d] << " from " << "gpr[" << d << "]\033[m\n";
    else std::cout << "\033[32mストア:\n" << "mem[" << mem.notify << "] = " << cpu.fpr[d] << " from " << "fpr[" << d << "]\033[m\n";
    std::cout << '\n';
}


INSTR instr_fetch(CPU& cpu, const MEMORY &mem){
    assert(cpu.pc < (unsigned int)mem.index);
    unsigned int pc = addr_to_index(cpu.pc);
    cpu.pc += 4;
    return mem.instr[pc];
}


bool exec(CPU& cpu, MEMORY_PRO& mem, FPU& fpu, CACHE& cache, OPTION& option){
    mem.cnt++;
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
            if(ea >= DATA_SIZE * 4){
                cpu.pc -= 4;
                output_cur_info(cpu, mem, option);
                assert(false);
            }
            cpu.gpr[d] = cache.lw(ea, mem);
            if(ea == mem.notify) notify_load(cpu, mem, option, d, 1);
            return false;
        case LWZU:
            ea = cpu.gpr[b] + exts(a);
            if(ea >= DATA_SIZE * 4){
                cpu.pc -= 4;
                output_cur_info(cpu, mem, option);
                assert(false);
            }
            cpu.gpr[d] = cache.lw(ea, mem);
            if(ea == mem.notify) notify_load(cpu, mem, option, d, 1);
            cpu.gpr[b] = ea;
            return false;
        case STW:   
            ea = (b ? cpu.gpr[b] : 0) + exts(a);
            if(ea >= DATA_SIZE * 4){
                cpu.pc -= 4;
                output_cur_info(cpu, mem, option);
                assert(false);
            }
            cache.swi(ea, mem, cpu.gpr[d]);
            if(ea == mem.notify) notify_store(cpu, mem, option, d, 1);
            return false;
        case STWU:
            ea = cpu.gpr[b] + exts(a);
            if(ea >= DATA_SIZE * 4){
                cpu.pc -= 4;
                output_cur_info(cpu, mem, option);
                assert(false);
            }
            cache.swi(ea, mem, cpu.gpr[d]);
            if(ea == mem.notify) notify_store(cpu, mem,option, d, 1);
            cpu.gpr[b] = ea;
            return false;
        case MFSPR:
            assert((a >> 5) == 0);
            if(a == 0b00001) cpu.gpr[d] = cpu.xer;
            else if(a == 0b01000) cpu.gpr[d] = cpu.lr;
            else if(a == 0b01001) cpu.gpr[d] = cpu.ctr;
            else{
                cpu.pc -= 4;
                output_cur_info(cpu, mem, option);
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
                output_cur_info(cpu, mem, option);
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
                output_cur_info(cpu, mem, option);
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
        case FCOS:
            cpu.fpr[d] = TasukuFukami::cos(cpu.fpr[a], fpu);
            return false;
        case FSIN:
            cpu.fpr[d] = TasukuFukami::sin(cpu.fpr[a], fpu);
            return false;
        case FATAN:
            cpu.fpr[d] = TasukuFukami::atan(cpu.fpr[d], fpu);
            return false;
        case LFS:
            tmp = (b == 0 ? 0 : cpu.gpr[b]);
            ea = tmp + exts(a);
            if(ea >= DATA_SIZE * 4){
                cpu.pc -= 4;
                output_cur_info(cpu, mem, option);
                assert(false);
            }
            cpu.fpr[d] = bit_cast<float, int>(cache.lw(ea, mem));
            if(ea == mem.notify) notify_load(cpu, mem, option, d, 0);
            return false;
        case LFSX:
            tmp = (a == 0 ? 0 : cpu.gpr[a]);
            ea = tmp + cpu.gpr[b];
            if(ea >= DATA_SIZE * 4){
                cpu.pc -= 4;
                output_cur_info(cpu, mem, option);
                assert(false);
            }
            cpu.fpr[d] = bit_cast<float, int>(cache.lw(ea, mem));
            if(ea == mem.notify) notify_load(cpu, mem, option, d, 0);
            return false;
        case STFSX:
            tmp = (a == 0 ? 0 : cpu.gpr[a]);
            ea = tmp + cpu.gpr[b];
            if(ea >= DATA_SIZE * 4){
                cpu.pc -= 4;
                output_cur_info(cpu, mem, option);
                assert(false);
            }
            cache.swf(ea, mem, cpu.fpr[d]);
            if(ea == mem.notify) notify_store(cpu, mem, option, d, 0);
            return false;
        case LWZX:
            tmp = (a == 0 ? 0 : cpu.gpr[a]);
            ea = tmp + cpu.gpr[b];
            if(ea >= DATA_SIZE * 4){
                cpu.pc -= 4;
                output_cur_info(cpu, mem, option);
                assert(false);
            }
            cpu.gpr[d] = cache.lw(ea, mem);
            if(ea == mem.notify) notify_load(cpu, mem, option, d, 1);
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
            if(ea >= DATA_SIZE * 4){
                cpu.pc -= 4;
                output_cur_info(cpu, mem, option);
                assert(false);
            }
            cache.swf(ea, mem, cpu.fpr[d]);
            if(ea == mem.notify) notify_store(cpu, mem, option, d, 0);
            return false;
        case STWX:
            tmp = (a == 0 ? 0 : cpu.gpr[a]);
            ea = cpu.gpr[b] + tmp;
            if(ea >= DATA_SIZE * 4){
                cpu.pc -= 4;
                output_cur_info(cpu, mem, option);
                assert(false);
            }
            cache.swi(ea, mem, cpu.gpr[d]);
            if(ea == mem.notify) notify_store(cpu, mem, option, d, 1);
            return false;
        case HALT:
            return true;
        default:
            cpu.pc -= 4;    
            output_cur_info(cpu, mem, option);
            warning(opcode_to_string(opc));
            assert(false);
            return false;
    }
}

// int simulate_whole(CPU& cpu, MEMORY_PRO &mem, FPU& fpu, CACHE& cache, OPTION& option){
//     while(!exec(cpu, mem, fpu, cache, option)){
//         if(option.ALL){
//             output_cur_info(cpu, mem, option);
//             cpu.show_gpr(false);
//             cpu.show_fpr(false);
//             cpu.show_lr(false);
//             cpu.show_cr(false);
//             cpu.show_ctr(false);
//             std::cout << '\n';
//         }
//     }
//     std::cerr << "program finised!" << std::endl;
//     return 0;
// }

void parse_step(SHOW& ss, const std::string& s){
    auto judge = [&](const std::string& t)->std::pair<bool, int>{
        if(t[1] != '[') ss.bad = 1;
        std::string::size_type idx = t.find(']');
        if(idx == std::string::npos) ss.bad = 1;
        if(ss.bad) return std::make_pair(false, -1);
        return std::make_pair(true, (int)idx);
    };
    auto res = remove_chars(s, " ;\n");
    for(int i = 0; i < (int)res.size(); i++){
        char c = res[i][0];
        if(c == 's') ss.next = false;
        else if(c == 'h') ss.help = 1;
        else if(c == 'S'){
            ss.S = true;
            auto p = judge(res[i]);
            if(!p.first) break;
            ss.Sval = stoll(res[i].substr(2, (int)p.second - 2));
        }
        else if(c == 'M'){
            ss.M = true;
            auto p = judge(res[i]);
            if(!p.first) break;
            auto tmp = remove_chars(res[i].substr(2, (int)p.second - 2), " -,");
            for(int i = 0; i < (int)tmp.size() / 2; i++) ss.Maddr.emplace_back(stoi(tmp[2*i]), stoi(tmp[2*i + 1]));
        }
        else if(c == 'm'){
            ss.m = true;
            auto p = judge(res[i]);
            if(!p.first) break;
            auto tmp = remove_chars(res[i].substr(2, (int)p.second - 2), " ,");
            for(int i = 0; i < (int)tmp.size(); i++) ss.maddr.emplace_back(stoi(tmp[i]));
        }
        else if(c == 'C'){
            ss.cache = true;
            auto p = judge(res[i]);
            if(!p.first) break;
            auto tmp = remove_chars(res[i].substr(2, (int)p.second - 2), " ,");
            for(int i = 0; i < (int)tmp.size(); i++) ss.index.emplace_back(stoi(tmp[i]));
        }
        else if(c == 'P'){
            ss.Point = true;
            auto p = judge(res[i]);
            if(!p.first) break;
            auto tmp = remove_chars(res[i].substr(2, (int)p.second - 2), " ,");
            if(tmp.size() == 2){
                ss.bpoint.first = tmp[0];
                ss.bpoint.second = stoi(tmp[1]);
            }
            else{
                if(tmp.size() != 1){
                    ss.bad = 1;
                    return;
                }
                if('0' <= tmp[0][0] && tmp[0][0] <= '9'){
                    ss.bpoint.first = "None";
                    ss.bpoint.second = stoi(tmp[0]);
                }
                else{
                    ss.bpoint.first = res[0];
                    ss.bpoint.second = -1;
                }
            }
        }
        else if(c == 'N'){
            ss.Notify = 1;
            auto p = judge(res[i]);
            if(!p.first) break;
            auto tmp = remove_chars(res[i].substr(2, (int)p.second - 2), " ,");
            for(int i = 0; i < (int)tmp.size(); i++){
                ss.nval.push_back(stoi(tmp[i]));
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

// void show_what(SHOW& ss, const std::string& s){
//     std::string garbage;
//     std::set<char> st;
//     for(const char& c : s) st.insert(c);
//     for(const char& c : st){
//         if(c == 's') ss.next = false;
//         else if(c == 'h') ss.help = 1;
//         else if(c == 'S'){
//             ss.S = true;
//             std::cout << "何ステップ進めますか?(ex: 25)" << std::endl;
//             console_B();
//             std::cin >> ss.Sval;
//             console_E();
//             std::getline(std::cin, garbage);
//         }
//         else if(c == 'M'){
//             ss.M = true;
//             std::cout << "メモリアドレスの範囲をbyte単位で指定してください(ex: 8-100, 200-300)" << std::endl;
//             console_B();
//             std::string t; std::getline(std::cin, t);
//             auto res = remove_chars(t, " -,");
//             for(int i = 0; i < (int)res.size() / 2; i++) ss.Maddr.emplace_back(stoi(res[2*i]), stoi(res[2*i + 1]));
//             console_E();
//         }
//         else if(c == 'm'){
//             ss.m = true;
//             std::cout << "メモリアドレスをbyte単位で指定してください(ex: 100, 12, 300)" << std::endl;
//             console_B();
//             std::string t; std::getline(std::cin, t);
//             auto res = remove_chars(t, " ,");
//             for(int i = 0; i < (int)res.size(); i++) ss.maddr.emplace_back(stoi(res[i]));
//             console_E();
//         }
//         else if(c == 'C'){
//             ss.cache = true;
//             std::cout << "表示するキャッシュのインデックスを指定してください(ex: 0, 3, 10)(max:" << CACHE_LINE_NUM - 1 << ")" << std::endl;
//             console_B();
//             std::string t; std::getline(std::cin, t);
//             console_E();
//             auto res = remove_chars(t, " ,");
//             for(int i = 0; i < (int)res.size(); i++) ss.index.emplace_back(stoi(res[i]));
//         }
//         else if(c == 'P'){
//             ss.Point = true;
//             std::cout << "ファイル名と行数(ex: libmincaml.S, 55) または ラベル名(ex: min_caml_print_int)を入力してください" << std::endl;
//             console_B();
//             std::string t; std::getline(std::cin, t);
//             console_E();
//             auto res = remove_chars(t, " ,");
//             if(res.size() == 2){
//                 ss.bpoint.first = res[0];
//                 ss.bpoint.second = stoi(res[1]);
//             }
//             else{
//                 ss.bpoint.first = res[0];
//                 ss.bpoint.second = -1;
//             }
//         }
//         else if(c == 'N'){
//             ss.Notify = 1;
//             std::cout << "通知したいメモリアドレスを入力してください(ex 60360, 100000)" << std::endl;
//             console_B();
//             std::string t; std::getline(std::cin, t);
//             console_E();
//             auto res = remove_chars(t, " ,");
//             for(int i = 0; i < (int)res.size(); i++){
//                 ss.nval.push_back(stoi(res[i]));
//             }
//         }
//         else if(c == 'B') ss.B = true;
//         else if(c == 'F') ss.F = true;
//         else if(c == 'g') ss.gr = true;
//         else if(c == 'f') ss.fr = true;
//         else if(c == 'c') ss.cr = true;
//         else if(c == 't') ss.ctr = true;
//         else if(c == 'l') ss.lr = true;
//     }
// }

void output_cur_info(CPU& cpu, MEMORY_PRO &mem, OPTION& option, bool next){
    std::cout << mem.cnt << "命令実行済" << '\n';
    auto it = mem.inv.upper_bound(cpu.pc);
    --it;
    auto[id, line] = mem.FL[addr_to_index(cpu.pc)];
    if(option.ALL){
        std::cout << "FILE: " << mem.file[id] << "\nLINE: " << line << '\n';
        std::cout << "LABEL: " << it->second << '\n';
        std::cout << "ADDR/4: " << cpu.pc/4 << '\n';
    }
    else{
        if(next) std::cout << "次に実行する命令は\n";
        std::cout << "\033[1;31mFILE: \033[m" << mem.file[id] << "\n\033[1;31mLINE:\033[m " << line << '\n';
        std::cout << "\033[1;31mLABEL:\033[m " << it->second << '\n';
        std::cout << "\033[1;31mADDR/4: \033[m" << cpu.pc/4 << '\n';
    }
}

int simulate_step(CPU& cpu, MEMORY_PRO &mem, OPTION& option, FPU& fpu, CACHE_PRO& cache){
    std::string s;
    while(console_B(), std::getline(std::cin, s)){
        console_E();
        if(s.size() == 0) continue;
        SHOW ss;
        // show_what(ss, s);
        parse_step(ss, s);
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
            std::cout << "N : 追跡したいアドレス n を指定\n";
            std::cout << "P : ブレイクポイント(file名,行数)/(ラベル名)の設定" << std::endl;
        }
        if(ss.bad){
            std::cout << "無効なステップ実行" << std::endl;
            continue;
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
                if(exec(cpu, mem, fpu, cache, option)){
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
            p.first = -1;
            for(int i = 0; i < (int)mem.file.size(); i++) if(mem.file[i] == ss.bpoint.first) p.first = i;
            if(p.first == -1){
                while(1){
                    if(exec(cpu, mem, fpu, cache, option)){
                        std::cout << "program finished!" << std::endl;
                        return 0;
                    }
                    if(addr_to_index(cpu.pc) == p.second) break;
                }
            }
            else if(p.second >= 0){
                while(1){
                    if(mem.FL[addr_to_index(cpu.pc)] == p) break;
                    if(exec(cpu, mem, fpu, cache, option)){
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
                    if(cpu.pc == (unsigned int)ss.bpoint.second) break;
                    if(exec(cpu, mem, fpu, cache, option)){
                        std::cout << "program finished!" << std::endl;
                        return 0;
                    }
                }
            }
            output_cur_info(cpu, mem, option, 1);
            std::swap(option.display_assembly, da);
            std::swap(option.display_binary, db);
        }
        if(ss.next) continue;
        std::cout << "終了した命令数 & 実行した命令:\n";
        output_cur_info(cpu, mem, option);
        auto[opc, d, a, b] = mem.instr[addr_to_index(cpu.pc)];
        if(option.display_assembly) show_instr(mem, opc, d, a, b); 
        if(option.display_binary) show_instr_binary(opc, d, a, b);
        if(exec(cpu, mem, fpu, cache, option)){
            std::cout << "program finished!" << std::endl;
            return 0;
        }
    }
    return 0;
}
