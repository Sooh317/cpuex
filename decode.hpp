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


/*
std::vector<std::string> remove_chars(std::string&, const std::string&);
void next_memory_address(int& ,const std::vector<std::string>&);
void put_instr_into_memory(std::string&, MEMORY&, std::map<std::string, int>&);
void decode(const std::string, MEMORY&);
INSTR decode_bin(const std::string&);
int collect_label(const std::string, std::map<std::string, int>&, int);
*/


// \r\n 未対応
std::vector<std::string> remove_chars(std::string& str, const std::string &chrs){
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
    else if(kind == ASCII){ // need to remove " \ ", which is 3 chars
        assert(s.size() >= 2);
        cnt += s[1].size() - 3;
    }
}

void put_instr_into_memory(std::string& str, MEMORY& mem){
    std::vector<std::string> s = remove_chars(str, ", \t\n");
    if(s.size() >= 1){
        if(s[0].back() == ':') return; // label
        DIRECTIVE_KIND kind = directive_kind(s[0]);
        if(kind == LONG) process_long_directive(mem, s[1]);
        else if(kind == ASCII) process_ascii_directive(mem, s[1]);
        else if(kind == SOME_DIRECTIVE) return;
        else if(kind == ALIGN);
        else{
            auto ins = recognize_instr(mem.lbl, s);
            mem.instr[mem.index >> 2] = ins;
        }
        next_memory_address(mem.index, s);
    }
}

void decode(const std::string file, MEMORY &mem){
    std::ifstream ifs(file);

    if(!ifs){
        std::cerr << "cannot open file" << std::endl;
        std::exit(1);
    }

    std::string str;
    while(std::getline(ifs, str)){
        put_instr_into_memory(str, mem);
    }
}

int collect_label(const std::string file, std::map<std::string, int>& label, int tmp){
    std::ifstream ifs(file);
    if(!ifs){
        std::cerr << "cannot open file" << std::endl;
        std::exit(1);
    }
    int cnt = tmp;
    std::string str;
    while(std::getline(ifs, str)){
        if(str[0] == '#') continue; // comment
        else if(str[0] != '\t' && str[0] != ' '){ // label
            str = remove_chars(str, " \t:")[0];
            label[str] = cnt;
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
    switch (val){
    case 0x1b:
        opcode = XORIS;
        d = btoi(bit.substr(11, 5));
        a = btoi(bit.substr(6, 5));
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
        else if(imm == 0x037){
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
        else if(imm == 0x0){
            opcode = CMPW;
            d = btoi(bit.substr(6, 3));
            a = btoi(bit.substr(11, 5));
            b = btoi(bit.substr(16, 5));
        }
        break;
    case 0xe: // addi
        opcode = ADDI;
        d = btoi(bit.substr(6, 5));
        a = btoi(bit.substr(11, 5));
        b = exts(bit.substr(16, 16));
        break;
    case 0xf: // addis
        opcode = ADDIS;
        d = btoi(bit.substr(6, 5));
        a = btoi(bit.substr(11, 5));
        b = exts(bit.substr(16, 16));
        break;
    case 0x0b: // cmpwi
        opcode = CMPWI;
        d = btoi(bit.substr(6, 3));
        a = btoi(bit.substr(11, 5));
        b = exts(bit.substr(16, 16));
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
            }
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
        else if(imm == 528) opcode = BCTR;
        else assert(false);
        break;
    case 0x15:
        opcode = SLWI;
        a = btoi(bit.substr(6, 5));
        d = btoi(bit.substr(11, 5));
        b = btoi(bit.substr(16, 5));
        break;    
    case 0x20: // lwz
        opcode = LWZ;
        d = btoi(bit.substr(6, 5));
        a = exts(bit.substr(16, 16));
        b = btoi(bit.substr(11, 5));
        break;
    case 0x21: // lwzu
        opcode = LWZU;
        d = btoi(bit.substr(6, 5));
        a = exts(bit.substr(16, 16));
        b = btoi(bit.substr(11, 5));
        break;
    case 0x24: // stw
        opcode = STW;
        d = btoi(bit.substr(6, 5));
        a = exts(bit.substr(16, 16));
        b = btoi(bit.substr(11, 5));
        break;
    case 0x25: // stwu
        opcode = STWU;
        d = btoi(bit.substr(6, 5));
        a = exts(bit.substr(16, 16));
        b = btoi(bit.substr(11, 5));
        break;
    case 0x32:
        opcode = LFD;
        d = btoi(bit.substr(6, 5));
        a = btoi(bit.substr(16, 16));
        b = btoi(bit.substr(11, 5));
        break;
    case 0x36:
        opcode = STFD;
        d = btoi(bit.substr(6, 5));
        a = btoi(bit.substr(16, 16));
        b = btoi(bit.substr(11, 5));
        break;
    case 0x3f:
        imm = btoi(bit.substr(21, 10));
        if(imm == 0x00f){
            opcode = FCTIWZ;
            d = btoi(bit.substr(6, 5));
            a = btoi(bit.substr(16, 5));
        }
        else if(imm == 0x108){
            opcode = FABS;
            d = btoi(bit.substr(6, 5));
            a = btoi(bit.substr(16, 5));
        }
        else if(imm == 0x015){
            opcode = FADD;
            d = btoi(bit.substr(6, 5));
            a = btoi(bit.substr(11, 5));
            b = btoi(bit.substr(16, 5));
        }
        else if(imm == 0){
            opcode = FCMPU;
            d = btoi(bit.substr(6, 3));
            a = btoi(bit.substr(11, 5));
            b = btoi(bit.substr(16, 5));
        }
        else if(imm == 0x012){
            opcode = FDIV;
            d = btoi(bit.substr(6, 5));
            a = btoi(bit.substr(11, 5));
            b = btoi(bit.substr(16, 5));
        }
        else if(imm == 0x48){
            opcode = FMR;
            d = btoi(bit.substr(6, 5));
            a = btoi(bit.substr(16, 5));
        }
        else if((imm & bitmask(5)) == 0x019){
            opcode = FMUL;
            d = btoi(bit.substr(6, 5));
            a = btoi(bit.substr(11, 5));
            b = btoi(bit.substr(21, 5));
        }
        else if(imm == 0x028){
            opcode = FNEG;
            d = btoi(bit.substr(6, 5));
            a = btoi(bit.substr(16, 5));
        }
        else if(imm == 0x014){
            opcode = FSUB;
            d = btoi(bit.substr(6, 5));
            a = btoi(bit.substr(11, 5));
            b = btoi(bit.substr(16, 5));
        }
        break;
    default:
        break;
    }
    return INSTR(opcode, d, a, b);
}