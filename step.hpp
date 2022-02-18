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
    cpu.pc--;
    output_cur_info(cpu, mem, option);
    cpu.pc++;
    if(gpr) std::cout << "\033[33mロード:\n" << "gpr[" << d << "] = " << cpu.gpr[d].i << " from " << "mem[" << mem.notify << "]\033[m\n";
    else std::cout << "\033[33mロード:\n" << "gpr[" << d << "] = " << cpu.gpr[d].f << " from " << "mem[" << mem.notify << "]\033[m\n";
    std::cout << '\n';
}
void notify_store(CPU& cpu, MEMORY_PRO& mem, OPTION& option, int d, bool gpr){
    cpu.pc--;
    output_cur_info(cpu, mem, option);
    cpu.pc++;
    if(gpr) std::cout << "\033[32mストア:\n" << "mem[" << mem.notify << "] = " << cpu.gpr[d].i << " from " << "gpr[" << d << "]\033[m\n";
    else std::cout << "\033[32mストア:\n" << "mem[" << mem.notify << "] = " << cpu.gpr[d].f << " from " << "fpr[" << d << "]\033[m\n";
    std::cout << '\n';
}


INSTR instr_fetch(CPU& cpu, const MEMORY &mem){
    assert(cpu.pc < (unsigned int)mem.index);
    return mem.instr[cpu.pc++];
}


bool exec(CPU& cpu, MEMORY_PRO& mem, FPU& fpu, CACHE_PRO& cache, OPTION& option){
    auto[opc, d, a, b] = instr_fetch(cpu, mem);
    mem.cnt++;
    mem.opc_cnt[opc]++;
    int c, ea, tmp;
    [[maybe_unused]] int bo, bi;
    std::ofstream sin, cos;
    bool ovf = false;
    switch(opc){
        case IN:
            cpu.gpr[d].i = mem.sld[mem.sldpointer++];
            return false;
        case OUT: // imm + 1 byte目はどこ
            cpu.write(segment(cpu.gpr[d].i, 8*3, 8*3 + 7));
            return false;

        case FLUSH:
            cpu.flush();
            return false;
        case HALT:
            return true;

        case ADD:
            cpu.gpr[d].i = cpu.gpr[a].i + cpu.gpr[b].i;
            return false;
        case ADDI:
            cpu.gpr[d].i = (a ? cpu.gpr[a].i : 0) + b;
            return false;
        case ADDIS:
            cpu.gpr[d].i = (a ? cpu.gpr[a].i : 0) + int(b << 16);
            return false;
        case SUB:
            cpu.gpr[d].i = cpu.gpr[a].i - cpu.gpr[b].i;
            return false;
        case MUL16:
            cpu.gpr[d].i = int(u32((cpu.gpr[a].i & bitmask(16))) * u32(cpu.gpr[b].i & bitmask(16)));
            return false;
        case MUL16I:
            cpu.gpr[d].i = int(u32((cpu.gpr[a].i & bitmask(16))) * u32(b & bitmask(16)));
            return false;
        case SLWI:
            cpu.gpr[d].i = (cpu.gpr[a].i & bitmask(32 - b)) << b;
            return false;
        case SRWI: // bitmask抜いた
            cpu.gpr[d].i = cpu.gpr[a].i >> b;
            return false;
        case ORI:
            cpu.gpr[d].i = cpu.gpr[a].i | (b & bitmask(16));
            return false;

        case CMP:
            if(cpu.gpr[d].i < cpu.gpr[a].i) c = 0b1000;
            else if(cpu.gpr[d].i > cpu.gpr[a].i) c = 0b0100;
            else c = 0b0010;
            clear_and_set(cpu.cr, 4*7, 4*7 + 3, c); // cr7のみ
            return false;
        case CMPI:
            if(cpu.gpr[d].i < a) c = 0b1000;
            else if(cpu.gpr[d].i > a) c = 0b0100;
            else c = 0b0010;
            clear_and_set(cpu.cr, 4*7, 4*7 + 3, c); // cr7のみ
            return false;
        case FCMP: // NaNについては存在しないとする
            if(cpu.gpr[d].f < cpu.gpr[a].f) c = 0b1000;
            else if(cpu.gpr[d].f > cpu.gpr[a].f) c = 0b0100;
            else c = 0b0010;
            // fpcc 無視してます
            clear_and_set(cpu.cr, 4*7, 4*7 + 3, c);
            return false;

        case B:
            cpu.pc = d;
            return false;
        case BL:    
            cpu.lr = cpu.pc;
            cpu.pc = d;
            return false;
        case BEQ:
            if(kth_bit(cpu.cr, 7*4 + 2)) cpu.pc = d;
            return false;
        case BLE:
            if(!kth_bit(cpu.cr, 7*4 + 1)) cpu.pc = d;
            return false;
        case BGE:
            if(!kth_bit(cpu.cr, 7*4)) cpu.pc = d;
            return false;
        case BLR:
            cpu.pc = cpu.lr;
            return false;

        case LW: 
            ea = cpu.gpr[b].i + a;
            if(ea >= DATA_SIZE || ea < 0){
                std::cerr << "mem[" << ea << "]への不正メモリアクセス" << std::endl;
                cpu.pc--;
                output_cur_info(cpu, mem, option);
                assert(false);
            }
            cpu.gpr[d].i = cache.lw(ea << 2, mem);
            if(ea == mem.notify) notify_load(cpu, mem, option, d, 1);
            return false;
        case LWX:
            tmp = cpu.gpr[a].i;
            ea = tmp + cpu.gpr[b].i;
            if(ea >= DATA_SIZE || ea < 0){
                std::cerr << "mem[" << ea << "]への不正メモリアクセス" << std::endl;
                cpu.pc--;
                output_cur_info(cpu, mem, option);
                assert(false);
            }
            cpu.gpr[d].i = cache.lw(ea << 2, mem);
            if(ea == mem.notify) notify_load(cpu, mem, option, d, 1);
            return false;
        case SW:   
            ea = cpu.gpr[b].i + a;
            if(ea >= DATA_SIZE || ea < 0){
                std::cerr << "mem[" << ea << "]への不正メモリアクセス" << std::endl;
                cpu.pc -= 1;
                output_cur_info(cpu, mem, option);
                assert(false);
            }
            cache.sw(ea << 2, mem, cpu.gpr[d].i);
            if(ea == mem.notify) notify_store(cpu, mem, option, d, 1);
            return false;
        case SWX:
            tmp = cpu.gpr[a].i;
            ea = cpu.gpr[b].i + tmp;
            if(ea >= DATA_SIZE || ea < 0){
                std::cerr << "mem[" << ea << "]への不正メモリアクセス" << std::endl;
                cpu.pc--;
                output_cur_info(cpu, mem, option);
                assert(false);
            }
            cache.sw(ea << 2, mem, cpu.gpr[d].i);
            if(ea == mem.notify) notify_store(cpu, mem, option, d, 1);
            return false;
        case LWI:
            cpu.gpr[d].i = (int32_t)cache.ld(a << 2, mem);
            return false;
        case LLI:
            cpu.gpr[d].i = a;
            return false;

        case MFLR:
            cpu.gpr[d].i = cpu.lr;
            return false;
        case MV:
            cpu.gpr[d].i = cpu.gpr[a].i;
            return false;
        case MTLR:
            cpu.lr = cpu.gpr[d].i;
            return false;

        case FADD:
            cpu.gpr[d].f = TasukuFukami::fadd(cpu.gpr[a].f, cpu.gpr[b].f);
            return false;
        case FSUB:
            cpu.gpr[d].f = TasukuFukami::fsub(cpu.gpr[a].f, cpu.gpr[b].f);
            return false;
        case FMUL:
            cpu.gpr[d].f = TasukuFukami::fmul(cpu.gpr[a].f, cpu.gpr[b].f);
            return false;
        case FDIV:
            cpu.gpr[d].f = TasukuFukami::fdiv(cpu.gpr[a].f, cpu.gpr[b].f, fpu, ovf);
            if(ovf){
                cpu.pc--;
                output_cur_info(cpu, mem, option);
                assert(false);
            }
            return false;
        case FABS:
            cpu.gpr[d].f = std::abs(cpu.gpr[a].f); // 多分これで問題ないよね...
            return false;
        case FNEG:
            cpu.gpr[d].f = -cpu.gpr[a].f;
            return false;
        case FSQRT:
            cpu.gpr[d].f = TasukuFukami::fsqrt(cpu.gpr[a].f, fpu);
            return false;
        case FFLOOR: // stdを使ってます
            cpu.gpr[d].f = std::floor(cpu.gpr[a].f);
            return false;
        case FHALF: // なにこれ
            cpu.gpr[d].f = TasukuFukami::fmul(cpu.gpr[a].f, 0.5);
            return false;
        case FSIN:
            cpu.gpr[d].f = TasukuFukami::sin(cpu.gpr[a].f, fpu);
            return false;
        case FCOS:
            cpu.gpr[d].f = TasukuFukami::cos(cpu.gpr[a].f, fpu);
            return false;
        case FATAN:
            cpu.gpr[d].f = TasukuFukami::atan(cpu.gpr[a].f, fpu);
            return false;
        case FTOI:
            cpu.gpr[d].i = int(std::trunc(cpu.gpr[a].f));
            // cpu.gpr[d].i = int(cpu.gpr[a].f);
            return false;
        case ITOF:
            cpu.gpr[d].f = float(cpu.gpr[a].i);
            return false;

        default:
            cpu.pc--;    
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
        else if(c == 'R') ss.done = true;
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
    if(option.ALL){
        std::cout << "ADDR: " << cpu.pc << '\n';
    }
    else{
        if(next) std::cout << "次に実行する命令は\n";
        std::cout << "\033[1;31mADDR: \033[m" << cpu.pc << '\n';
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
        if(ss.done){
            while(!exec(cpu, mem, fpu, cache, option)){;}
            return 0;
        }
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
            std::cout << "P : ブレイクポイント(file名,行数)/(ラベル名)の設定\n";
            std::cout << "R : 最後まで一気に実行" << std::endl;
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
            cache.show_cache(ss);
        }
        if(ss.Notify){ // とりあえず1つ
            for(int addr : ss.nval) mem.notify = addr;
            std::cout << "アドレス:" << mem.notify << " を追跡します" << std::endl;
        }
        if(ss.cache){
            for(int ind : ss.index){
                cache.show_cache_line(ind);
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
            std::pair<int, u32> p;
            p.second = ss.bpoint.second;
            p.first = -1;
            while(1){
                if(exec(cpu, mem, fpu, cache, option)){
                    std::cout << "program finished!" << std::endl;
                    return 0;
                }
                if(cpu.pc == p.second) break;
            }
            output_cur_info(cpu, mem, option, 1);
            std::swap(option.display_assembly, da);
            std::swap(option.display_binary, db);
        }
        if(ss.next) continue;
        std::cout << "終了した命令数 & 実行した命令:\n";
        output_cur_info(cpu, mem, option);
        auto[opc, d, a, b] = mem.instr[cpu.pc];
        if(option.display_assembly) show_instr(mem, opc, d, a, b); 
        if(option.display_binary) show_instr_binary(opc, d, a, b);
        if(exec(cpu, mem, fpu, cache, option)){
            std::cout << "program finished!" << std::endl;
            return 0;
        }
    }
    return 0;
}
