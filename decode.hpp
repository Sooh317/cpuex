#pragma once 
#include "struct.hpp"
#include "directive.hpp"
#include "instruction.hpp"
#include "util.hpp"
#include <iostream>
#include <fstream>
#include <string>
#include <vector>
#include <cassert>
#include <map>


// \r\n 未対応
std::vector<std::string> remove_chars(const std::string& str, const std::string &chrs){
    std::vector<std::string> res;
    std::string cur;
    for(int i = 0; i < (int)str.size(); i++){
        if(str[i] == '#') break;
        bool find = false;
        for(int j = 0; j < (int)chrs.size(); j++){
            if(str[i] == chrs[j]){
                find = true;
                if(cur != ""){
                    res.emplace_back(cur);
                    cur = "";
                }
                break;
            }
        }
        if(!find) cur += str[i];
    }
    if(cur != "") res.emplace_back(cur);
    return res;
}

void next_memory_address(int &cnt, const std::vector<std::string> &s){
    if(s.size() == 0) return;
    DIRECTIVE_KIND kind = directive_kind(s[0]);
    if(kind == NOT_DIRECTIVE || kind == LONG) cnt += 1 << 2;
    else if(kind == ALIGN){
        assert(s.size() >= 2);
        int k = 1 << stoi(s[1]);
        if(cnt % k == 0) return;
        cnt += k - cnt % k;
    }
    // else if(kind == ASCII){ // need to remove " \ ", which is 3 chars
    //     assert(s.size() >= 2);
    //     cnt += s[1].size() - 3;
    // }
}

void put_instr_into_memory(std::string& str, MEMORY_PRO& mem_pro, CACHE_PRO& cache_pro, std::ofstream& ofs){
    std::vector<std::string> s = remove_chars(str, ", \t\n");
    if(s.size() >= 1){
        if(s[0].back() == ':'){
            ofs << str << '\n';
            return; // label
        }
        DIRECTIVE_KIND kind = directive_kind(s[0]);
        if(kind == LONG){
            process_long_directive(cache_pro, mem_pro, s[1]);
            ofs << str << "        ##" << mem_pro.index / 4 << '\n';
        }
        //else if(kind == ASCII) process_ascii_directive(mem, s[1]);
        else if(kind == SOME_DIRECTIVE) return;
        else if(kind != ALIGN){
            auto ins = recognize_instr(mem_pro, s);
            mem_pro.instr[mem_pro.index >> 2] = ins;
            ofs << str << "        ##" << mem_pro.index / 4 << '\n';
        }
        next_memory_address(mem_pro.index, s);
    }
}

void decode(const std::string& file, MEMORY_PRO &mem_pro, CACHE_PRO& cache_pro, std::ofstream& ofs){
    std::ifstream ifs(file);

    if(!ifs){
        std::cerr << "cannot open " << file << std::endl;
        std::exit(1);
    }

    std::string str;
    while(std::getline(ifs, str)){
        put_instr_into_memory(str, mem_pro, cache_pro, ofs);
    }
}

int collect_label(const std::string file, MEMORY_PRO& mem_pro, int tmp){
    std::ifstream ifs(file);
    if(!ifs){
        std::cerr << "cannot open " << file << std::endl;
        std::exit(1);
    }
    int cnt = tmp;
    std::string str;
    while(std::getline(ifs, str)){
        if(str.size() == 0 || str[0] == '#') continue; // comment
        else if(str[0] != '\t' && str[0] != ' '){ // label
            str = remove_chars(str, " \t:")[0];
            mem_pro.lbl[str] = cnt;
            mem_pro.inv[cnt] = str;
        }
        else{
            auto ss = remove_chars(str, ", \t\n");
            next_memory_address(cnt, ss);
        }
    }
    return cnt;
}

INSTR decode_bin(const std::string& bit, MEMORY_PRO& mem){
    int val = btoi(bit.substr(0, 4));
    INSTR_KIND opcode = NOT_INSTR;
    int d = 0, a = 0, b = 0;
    if(bit.size() == 33){
        d = stoi(bit.substr(1, 32), nullptr, 2);
        return INSTR(opcode, d, a, b);
    }
    [[maybe_unused]]int mb, me;
    if(val == 0b0000){
        if(bit[30] == '0' && bit[31] == '0') opcode = IN;
        else if(bit[30] == '0' && bit[31] == '1') opcode = OUT;
        else if(bit[30] == '1' && bit[31] == '0') opcode = FLUSH;
        else if(bit[30] == '1' && bit[31] == '1') opcode = HALT;
        else assert(false);
    }
    else if(val == 0b0001) opcode = ADDI;
    else if(val == 0b0010) opcode = ADDIS;
    else if(val == 0b0011) opcode = SLWI;
    else if(val == 0b0100) opcode = SRWI;
    else if(val == 0b0101) opcode = MUL16I;
    else if(val == 0b0110) opcode = ORI;
    else if(val == 0b0111) opcode = LWZ;
    else if(val == 0b1000) opcode = STW;
    else if(val == 0b1001){
        if(bit[30] == '0' && bit[31] == '1'){
            if(btoi(bit.substr(22, 8)) == 0) opcode = ADD;
            else if(btoi(bit.substr(22, 8)) == 1) opcode = SUB;
            else if(btoi(bit.substr(22, 8)) == 2) opcode = MUL16;
            else if(btoi(bit.substr(22, 8)) == 3) opcode = FADD;
            else if(btoi(bit.substr(22, 8)) == 4) opcode = FSUB;
            else if(btoi(bit.substr(22, 8)) == 5) opcode = FMUL;
            else if(btoi(bit.substr(22, 8)) == 6) opcode = FDIV;
            else assert(false);
        }
        else if(bit[30] == '1' && bit[31] == '0') opcode = FADDMUL;
        else if(bit[30] == '0' && bit[31] == '0'){
            if(btoi(bit.substr(22, 8)) == 0) opcode = FABS;
            else if(btoi(bit.substr(22, 8)) == 1) opcode = FNEG;
            else if(btoi(bit.substr(22, 8)) == 2) opcode = FSQRT;
            else if(btoi(bit.substr(22, 8)) == 3) opcode = FFLOOR;
            else if(btoi(bit.substr(22, 8)) == 4) opcode = FHALF;
            else if(btoi(bit.substr(22, 8)) == 5) opcode = FSIN;
            else if(btoi(bit.substr(22, 8)) == 6) opcode = FCOS;
            else if(btoi(bit.substr(22, 8)) == 7) opcode = FATAN;
            else if(btoi(bit.substr(22, 8)) == 8) opcode = FTOI;
            else if(btoi(bit.substr(22, 8)) == 9) opcode = ITOF;
        }
    }
    else if(val == 0b1010){
        if(bit[30] == '0' && bit[31] == '0') opcode = CMPW;
        else if(bit[30] == '0' && bit[31] == '1') opcode = CMPWI;
        else if(bit[30] == '1' && bit[31] == '1') opcode = FCMPU;
        else{
            if(btoi(bit.substr(26, 4)) == 0) opcode = B;
            else if(btoi(bit.substr(26, 4)) == 1) opcode = BL;
            else if(btoi(bit.substr(26, 4)) == 2) opcode = BEQ;
            else if(btoi(bit.substr(26, 4)) == 3) opcode = BLE;
            else if(btoi(bit.substr(26, 4)) == 4) opcode = BGE;
            else if(btoi(bit.substr(26, 4)) == 5) opcode = BLR;
            else assert(false);
        }
    }
    else if(val == 0b1011){
        if(bit[30] == '0' && bit[31] == '0') opcode = LWZX;
        else if(bit[30] == '0' && bit[31] == '1') opcode = STWX;
        else if(bit[30] == '1' && bit[31] == '0') opcode = MR;
        else{
            if(btoi(bit.substr(10, 20)) == 0) opcode = MTSPR;
            else if(btoi(bit.substr(10, 20)) == 1) opcode = MFSPR;
            else assert(false);
        }
    }
    else if(val == 0b1100) opcode = LWI;

    if(mem.kind_to_form[opcode] == R){
        d = btoi(bit.substr(4, 6));
    }
    else if(mem.kind_to_form[opcode] == RR){
        d = btoi(bit.substr(4, 6));
        a = btoi(bit.substr(10, 6));
    }
    else if(mem.kind_to_form[opcode] == RRR){
        d = btoi(bit.substr(4, 6));
        a = btoi(bit.substr(10, 6));
        b = btoi(bit.substr(16, 6));
    }
    else if(mem.kind_to_form[opcode] == RRRR){
        d = btoi(bit.substr(4, 6));
        a = btoi(bit.substr(10, 12));
        b = btoi(bit.substr(22, 6));
    }
    else if(mem.kind_to_form[opcode] == RIR){
        d = btoi(bit.substr(4, 6));
        b = btoi(bit.substr(10, 6));
        a = btoi(bit.substr(16, 16));
    }
    else if(mem.kind_to_form[opcode] == RRI){
        d = btoi(bit.substr(4, 6));
        a = btoi(bit.substr(10, 6));
        b = btoi(bit.substr(16, 16));
    }
    else if(mem.kind_to_form[opcode] == RI){
        d = btoi(bit.substr(4, 6));
        b = btoi(bit.substr(10, 16));
    }
    else if(mem.kind_to_form[opcode] == L){
        d = btoi(bit.substr(4, 22));
    }
    else if(mem.kind_to_form[opcode] == RL){
        d = btoi(bit.substr(4, 6));
        a = btoi(bit.substr(10, 22));
    }

    return INSTR(opcode, d, a, b);
}