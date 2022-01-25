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

INSTR decode_bin(const std::string& bit){
    int val = btoi(bit.substr(0, 6));
    INSTR_KIND opcode = NOT_INSTR;
    int d = 0, a = 0, b = 0, imm;
    if(bit.size() == 33){
        d = stoi(bit.substr(1, 32), nullptr, 2);
        return INSTR(opcode, d, a, b);
    }
    [[maybe_unused]]int mb, me;
    switch (val){
    case 0x0: // かわるかも
        opcode = IN;
        d = btoi(bit.substr(6, 5));
        // a = btoi(bit.substr(11, 5));
        break;
    case 0x1:
        opcode = OUT;
        d = btoi(bit.substr(6, 5));
        a = 0;
        break;
    case 0x2:
        opcode = FLUSH;
        break;
    case 0x1b:
        opcode = XORIS;
        d = btoi(bit.substr(11, 5));
        a = btoi(bit.substr(6, 5));
        b = btoi(bit.substr(16, 16));
        break;
    case 0x1f: // add, mfspr, mr, mtspr
        imm = btoi(bit.substr(21, 10));
        if(imm == 0x153){ // mfspr
            opcode = MFSPR;
            d = btoi(bit.substr(6, 5));
            a = btoi(bit.substr(11, 10));
        }
        else if(imm == 0x1d3){ // mtspr
            opcode = MTSPR;
            d = btoi(bit.substr(11, 10));
            a = btoi(bit.substr(6, 5));
        }
        else if(imm == 0x1bc){ // mr
            opcode = MR;
            d = btoi(bit.substr(11, 5));
            a = btoi(bit.substr(6, 5));
        }
        else if(imm == 0x017){
            opcode = LWZX;
            d = btoi(bit.substr(6, 5));
            a = btoi(bit.substr(11, 5));
            b = btoi(bit.substr(16, 5));
        }
        else if(imm == 0x097){
            opcode = STWX;
            d = btoi(bit.substr(6, 5));
            a = btoi(bit.substr(11, 5));
            b = btoi(bit.substr(16, 5));
        }
        else if(imm == 0x10a){ // add
            opcode = ADD;
            d = btoi(bit.substr(6, 5));
            a = btoi(bit.substr(11, 5));
            b = btoi(bit.substr(16, 5));
        }
        else if(imm == 0x10b){
            opcode = SUB;
            d = btoi(bit.substr(6, 5));
            a = btoi(bit.substr(11, 5));
            b = btoi(bit.substr(16, 5));
        }
        else if(imm == 0x00b){
            opcode = MULHWU;
            d = btoi(bit.substr(6, 5));
            a = btoi(bit.substr(11, 5));
            b = btoi(bit.substr(16, 5));
        }
        else if(imm == 0x0){
            opcode = CMPW;
            d = btoi(bit.substr(6, 3));
            a = btoi(bit.substr(11, 5));
            b = btoi(bit.substr(16, 5));
        }
        else if(imm == 0x217){
            opcode = LFSX;
            d = btoi(bit.substr(6, 5));
            a = btoi(bit.substr(11, 5));
            b = btoi(bit.substr(16, 5));
            break;
        }
        else if(imm == 0x297){
            opcode = STFSX;
            d = btoi(bit.substr(6, 5));
            a = btoi(bit.substr(11, 5));
            b = btoi(bit.substr(16, 5));
            break;
        }
        break;
    case 0xe: // addi
        opcode = ADDI;
        d = btoi(bit.substr(6, 5));
        a = btoi(bit.substr(11, 5));
        b = exts(btoi(bit.substr(16, 16)));
        break;
    case 0xf: // addis
        opcode = ADDIS;
        d = btoi(bit.substr(6, 5));
        a = btoi(bit.substr(11, 5));
        b = btoi(bit.substr(16, 16));
        break;
    case 0x0b: // cmpwi
        opcode = CMPWI;
        d = btoi(bit.substr(6, 3));
        a = btoi(bit.substr(11, 5));
        b = exts(btoi(bit.substr(16, 16)));
        break;
    case 0x07:
        opcode = MULLI;
        d = btoi(bit.substr(6, 5));
        a = btoi(bit.substr(11, 5));
        b = exts(btoi(bit.substr(16, 16)));
        break;
    case 0x10: // bgt,  bcl
        //01000001100001111010101010101000
        if(bit[30] == '0' && bit[31] == '1'){
            opcode = BCL;
            d = btoi(bit.substr(6, 5));
            a = btoi(bit.substr(11, 5));
            b = exts(bit.substr(16, 14), 2);
        }
        else if(bit[30] == '0' && bit[31] == '0'){
            d = btoi(bit.substr(11, 5));
            a = exts(bit.substr(16, 14), 2);
            if(bit.substr(6, 5)  == "01100"){
                if((d & bitmask(2)) == 1) opcode = BGT;
                else if((d & bitmask(2)) == 0) opcode = BLT;
            }
            else if(bit.substr(6, 5) == "00100"){
                if((d & bitmask(2)) == 2) opcode = BNE;
                else if((d & bitmask(2)) == 0) opcode = BGE;
            }
            d /= 4;
        }
        else assert(false);
        break;
    case 0x12: // b 系列
        if(bit[30] == '0' && bit[31] == '0') opcode = B;
        else if(bit[30] == '0' && bit[31] == '1') opcode = BL;
        d = exts(bit.substr(6, 24), 2);
        assert(d >= 0 && d % 4 == 0);
        break;
    case 0x13: // bctr, blr
        imm = btoi(bit.substr(21, 10));
        if(imm == 16) opcode = BLR;
        else if(imm == 528){
            if(bit.back() == '1') opcode = BCTRL;
            else opcode = BCTR;
        }
        else assert(false);
        break;
    case 0x15:
        mb = btoi(bit.substr(21, 5));
        me = btoi(bit.substr(26, 5));
        if(me == 31) opcode = SRWI;
        else opcode = SLWI;
        a = btoi(bit.substr(6, 5));
        d = btoi(bit.substr(11, 5));
        b = btoi(bit.substr(16, 5));
        break; 
    case 0x18:
        opcode = ORI;
        a = btoi(bit.substr(6, 5));
        d = btoi(bit.substr(11, 5));
        b = btoi(bit.substr(16, 16));
        break;
    case 0x20: // lwz
        opcode = LWZ;
        d = btoi(bit.substr(6, 5));
        a = exts(btoi(bit.substr(16, 16)));
        b = btoi(bit.substr(11, 5));
        break;
    case 0x21: // lwzu
        opcode = LWZU;
        d = btoi(bit.substr(6, 5));
        a = btoi(bit.substr(16, 16));
        b = exts(btoi(bit.substr(11, 5)));
        break;
    case 0x24: // stw
        opcode = STW;
        d = btoi(bit.substr(6, 5));
        a = exts(btoi(bit.substr(16, 16)));
        b = btoi(bit.substr(11, 5));
        break;
    case 0x25: // stwu
        opcode = STWU;
        d = btoi(bit.substr(6, 5));
        a = exts(btoi(bit.substr(16, 16)));
        b = btoi(bit.substr(11, 5));
        break;
    case 0x30:
        opcode = LFS;
        d = btoi(bit.substr(6, 5));
        a = exts(btoi(bit.substr(16, 16)));
        b = btoi(bit.substr(11, 5));
        break;
    case 0x34:
        opcode = STFS;
        d = btoi(bit.substr(6, 5));
        a = exts(btoi(bit.substr(16, 16)));
        b = btoi(bit.substr(11, 5));
        break;
    case 0x3f:
        if(btoi(bit) == (~0)){
            opcode = HALT;
            break;
        }
        imm = btoi(bit.substr(21, 10));
        if(imm == 0){
            opcode = FCMPU;
            d = btoi(bit.substr(6, 3));
            a = btoi(bit.substr(11, 5));
            b = btoi(bit.substr(16, 5));
        }
        else if(imm == 0x00f){
            opcode = FCTIWZ;
            d = btoi(bit.substr(6, 5));
            a = btoi(bit.substr(16, 5));
        }
        else if(imm == 0x010){
            opcode = FCFIW;
            d = btoi(bit.substr(6, 5));
            a = btoi(bit.substr(16, 5));
        }
        else if(imm == 0x012){
            opcode = FDIV;
            d = btoi(bit.substr(6, 5));
            a = btoi(bit.substr(11, 5));
            b = btoi(bit.substr(16, 5));
        }
        else if(imm == 0x014){
            opcode = FSUB;
            d = btoi(bit.substr(6, 5));
            a = btoi(bit.substr(11, 5));
            b = btoi(bit.substr(16, 5));
        }
        else if(imm == 0x015){
            opcode = FADD;
            d = btoi(bit.substr(6, 5));
            a = btoi(bit.substr(11, 5));
            b = btoi(bit.substr(16, 5));
        }
        else if((imm & bitmask(5)) == 22){
            opcode = FSQRT;
            d = btoi(bit.substr(6, 5));
            a = btoi(bit.substr(16, 5));
        }
        else if((imm & bitmask(5)) == 25){
            opcode = FMUL;
            d = btoi(bit.substr(6, 5));
            a = btoi(bit.substr(11, 5));
            b = btoi(bit.substr(21, 5));
        }
        else if((imm & bitmask(5)) == 28){
            opcode = FSIN;
            d = btoi(bit.substr(6, 5));
            a = btoi(bit.substr(16, 5));
        }
        else if((imm & bitmask(5)) == 29){
            opcode = FCOS;
            d = btoi(bit.substr(6, 5));
            a = btoi(bit.substr(16, 5));
        }
        else if((imm & bitmask(5)) == 30){
            opcode = FATAN;
            d = btoi(bit.substr(6, 5));
            a = btoi(bit.substr(16, 5));
        }
        else if(imm == 0x028){
            opcode = FNEG;
            d = btoi(bit.substr(6, 5));
            a = btoi(bit.substr(16, 5));
        }
        else if(imm == 0x40){ // mcrfs を借りた
            opcode = FFLOOR;
            d = btoi(bit.substr(6, 5));
            a = btoi(bit.substr(16, 5));
        }
        else if(imm == 0x46){ // mtfsb0 を借りた
            opcode = FHALF;
            d = btoi(bit.substr(6, 5));
            a = btoi(bit.substr(16, 5));
        }
        else if(imm == 0x48){
            opcode = FMR;
            d = btoi(bit.substr(6, 5));
            a = btoi(bit.substr(16, 5));
        }
        else if(imm == 0x108){
            opcode = FABS;
            d = btoi(bit.substr(6, 5));
            a = btoi(bit.substr(16, 5));
        }
        break;
    default:
        break;
    }
    return INSTR(opcode, d, a, b);
}