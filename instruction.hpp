#pragma once
#include <stdint.h>
#include <map>
#include <cassert>
#include <string>
#include <stdio.h>
#include "struct.hpp"
#include "util.hpp"

/*
enum INSTR_KIND opcode_of_instr(const std::string&);
INSTR recognize_instr(std::map<std::string, int>&, const std::vector<std::string>&);
int opcode_to_bit(INSTR_KIND kind);
std::string opcode_to_string(INSTR_KIND);
void show_instr(INSTR_KIND, int, int, int);
void show_instr_binary(INSTR_KIND, int, int, int);
*/

enum INSTR_KIND opcode_of_instr(const std::string& s){
    if(s == "add") return ADD;
    if(s == "addi") return ADDI;
    if(s == "addis") return ADDIS;
    if(s == "cmpwi") return CMPWI;
    if(s == "bgt") return BGT;
    if(s == "bl") return BL;
    if(s == "blr") return BLR;
    if(s == "bctr") return BCTR;
    if(s == "bcl") return BCL;
    if(s == "lwz") return LWZ;
    if(s == "lwzu") return LWZU;
    if(s == "stw") return STW;
    if(s == "stwu") return STWU;
    if(s == "mfspr") return MFSPR;
    if(s == "mr") return MR;
    if(s == "mtspr") return MTSPR;
    // 1st architecture
    if(s == "fabs") return FABS;
    if(s == "fctiwz") return FCTIWZ;
    if(s == "xoris") return XORIS;
    if(s == "in") return IN;
    if(s == "out") return OUT;
    if(s == "flush") return FLUSH;
    if(s == "b") return B;
    if(s == "blt") return BLT;
    if(s == "bne") return BNE;
    if(s == "cmpw") return CMPW;
    if(s == "fadd") return FADD;
    if(s == "fcmpu") return FCMPU;
    if(s == "fdiv") return FDIV;
    if(s == "fmr") return FMR;   
    if(s == "fmul") return FMUL;
    if(s == "fneg") return FNEG;
    if(s == "fsub") return FSUB;
    if(s == "lfs") return LFS;
    if(s == "lwzx") return LWZX;
    if(s == "mulli") return MULLI;
    if(s == "mulhwu") return MULHWU;
    if(s == "slwi") return SLWI;
    if(s == "srwi") return SRWI;
    if(s == "stfs") return STFS;
    if(s == "stwx") return STWX;
    if(s == "fcfiw") return FCFIW;

    return INSTR_UNKNOWN;
}

std::string opcode_to_string(INSTR_KIND kind){
    switch (kind){
    case ADD:
        return "add";
    case ADDI:
        return "addi";
    case ADDIS:
        return "addis";
    case CMPWI:
        return "cmpwi";
    case BGT:
        return "bgt";
    case BL:
        return "bl";
    case BLR:
        return "blr";
    case BCL:
        return "bcl";
    case BCTR:
        return "bctr";
    case LWZ:
        return "lwz";
    case LWZU:
        return "lwzu";
    case STW:
        return "stw";
    case STWU:
        return "stwu";
    case MFSPR:
        return "mfspr";
    case MR:
        return "mr";
    case MTSPR:
        return "mtspr";
    case XORIS:
        return "xoris";
    case FCTIWZ:
        return "fctiwz";
    case B:
        return "b";
    case BLT:
        return "blt";
    case BNE:
        return "bne";
    case CMPW:
        return "cmpw";
    case FABS:
        return "fabs";
    case FADD:
        return "fadd";
    case FCMPU:
        return "fcmpu";
    case FCFIW:
        return "fcfiw";
    case FDIV:
        return "fdiv";
    case FMR:
        return "fmr";
    case FMUL:
        return "fmul";
    case FNEG:
        return "fneg";
    case FSUB:
        return "fsub";
    case IN:
        return "in";
    case OUT:
        return "out";
    case FLUSH:
        return "flush";
    case LFS:
        return "lfs";
    case LWZX:
        return "lwzx";
    case MULLI:
        return "mulli";
    case MULHWU:
        return "mulhwu";
    case SLWI:
        return "slwi";
    case SRWI:
        return "srwi";
    case STFS:
        return "stfs";
    case STWX:
        return "stwx";

    case NOT_INSTR:
        return "not_instr";
    default:
        return "instr_unknown";
    }
    return "-1";
}

int internal_reg_number(const std::string& s, bool in_paren, std::map<std::string, int>& lbl){
    if(in_paren){
        int lparen = -1, rparen = (int)s.size() - 1;
        for(int i = (int)s.size() - 2; i >= 0; i--){
            if(s[i] == '('){
                lparen = i;
                break;
            }
        }
        return internal_reg_number(s.substr(lparen + 1, rparen - lparen - 1), 0, lbl);
    }
    if((s[0] == 'l' && s[1] == 'o') || (s[0] == 'h' && s[1] == 'a')){ // lo16() or ha16()
        auto calc = [&]()->int{
            int lparen = 4, rparen = -1, minus = 0;
            for(int i = 5; i < (int)s.size(); i++){
                if(s[i] == '-') minus = i;
                if(s[i] == ')'){
                    rparen = i;
                    break;
                }
            }
            assert(rparen != -1);
            //std::cout << lparen << " " << minus << " " << rparen << "\n" << std::flush;
            if(minus){
                std::string label1 = s.substr(lparen + 1, minus - lparen - 1);
                std::string label2 = s.substr(minus + 1, rparen - minus - 1);
                if(lbl.find(label1) != lbl.end()){
                    return (s[0] == 'l' ? lo16(lbl[label1] - lbl[label2]) : ha16(lbl[label1] - lbl[label2]));
                }
                else{
                    assert(false);
                    return 0;
                }
            }
            else{
                std::string label = s.substr(lparen + 1, rparen - lparen - 1);
                if(lbl.find(label) != lbl.end()){
                    return (s[0] == 'l' ? lo16(lbl[label]) : ha16(lbl[label]));
                }
                else{
                    assert(false);
                    return 0;
                }
            }
        };
        return calc();
    }
    else if(s[0] == 'r'){ // gpr
        return stoi(s.substr(1, s.size() - 1));
    }
    else if(s[0] == 'f'){ // fpr
        return stoi(s.substr(1, s.size() - 1));
    }
    else if(s[0] == 'c'){ // cr
        return stoi(s.substr(2, s.size() - 2));
    }
    else if(s.size() >= 2 && s[0] == '0' && (s[1] == 'x' || s[1] == 'b')){ // 0x か 0b を仮定
        int base = -1, res = 0;
        if(s[1] == 'x') base = 16;
        else if(s[1] == 'b') base = 2;
        else assert(false);
        for(int i = 2; i < (int)s.size(); i++){
            res = res * base + (('a' <= s[i] && s[i] <= 'f') ? (10 + s[i] - 'a') : s[i] - '0');
        }
        return res;
    }
    else{ //数字から始まる
        int lparen = -1;
        for(int i = 0; i < (int)s.size(); i++){
            if(s[i] == '('){
                lparen = i;
                break;
            }
        }
        if(lparen == -1) return stoi(s);
        else{
            return stoi(s.substr(0, lparen));
        }
    }
}



INSTR recognize_instr(std::map<std::string, int>& lbl, const std::vector<std::string> &s){
    auto call = [&](int id, bool in_flag)->int{return internal_reg_number(s[id], in_flag, lbl);};
    INSTR_KIND opc = opcode_of_instr(s[0]);
    int rd = 0, ra = 0, rb = 0;
    switch (opc){
        case ADD:
            rd = call(1, 0);
            ra = call(2, 0);
            rb = call(3, 0);
            break;
        case ADDI:
            rd = call(1, 0);
            ra = call(2, 0);
            rb = call(3, 0);
            break;
        case ADDIS:
            rd = call(1, 0);
            ra = call(2, 0);
            rb = call(3, 0);
            break;
        case CMPWI:
            rd = call(1, 0);
            ra = call(2, 0);
            rb = call(3, 0);
            break;
        case BGT:
            if(s.size() == 3){
                rd = call(1, 0);
                if(lbl.find(s[2]) != lbl.end()) ra = lbl[s[2]];
                else{
                    printout(s[2]);
                    assert(false);
                }
            }
            else if(s.size() == 2){ // 怪しいかも
                rd = 0;
                if(lbl.find(s[2]) != lbl.end()) ra = lbl[s[2]];
                else{
                    printout(s[2]);
                    assert(false);
                }
            }
            else assert(false);
            break;
        case BL:
            if(lbl.find(s[1]) != lbl.end()) rd = lbl[s[1]];
            else{
                printout(s[1]);
                assert(false);
            }
            break;
        case BLR: // 無条件分岐 to LR
            break;
        case BCL: // 注 : 常にラベルがくると仮定
            rd = call(1, 0);
            ra = call(2, 0);
            if(lbl.find(s[3]) != lbl.end()) rb = lbl[s[3]];
            else{
                printout(s[3]);
                assert(false);
            }
            break;
        case BCTR: // 無条件分岐
            break;
        case LWZ:
            rd = call(1, 0);
            ra = call(2, 0);
            rb = call(2, 1);
            break;
        case LWZU:
            rd = call(1, 0);
            ra = call(2, 0);
            rb = call(2, 1);
            break;
        case STW:
            rd = call(1, 0);
            ra = call(2, 0);
            rb = call(2, 1);
            break;
        case STWU:
            rd = call(1, 0);
            ra = call(2, 0);
            rb = call(2, 1);
            break;
        case MFSPR: // move from LR
            rd = call(1, 0);
            ra = call(2, 0);
            break;  
        case MR:
            rd = call(1, 0);
            ra = call(2, 0);
            break;
        case MTSPR: // move to LR
            rd = call(1, 0);
            ra = call(2, 0);
            break;
        // 1st architecture
        case XORIS:
            rd = call(1, 0);
            ra = call(2, 0);
            rb = call(3, 0);
            break;
        case IN:
            rd = call(1, 0);
            break;
        case OUT:
            rd = call(1, 0);
            ra = call(2, 0);
            break;
        case FLUSH:
            break;
        case FCTIWZ:
            rd = call(1, 0);
            ra = call(2, 0);
            break;
        case B:
            if(lbl.find(s[1]) != lbl.end()) rd = lbl[s[1]];
            else{
                printout(s[1]);
                assert(false);
            }
            break;
        case BLT:
            if(s.size() == 3){
                rd = call(1, 0);
                if(lbl.find(s[2]) != lbl.end()) ra = lbl[s[2]];
                else{
                    printout(s[2]);
                    assert(false);
                }
            }
            else if(s.size() == 2){
                rd = 0;
                if(lbl.find(s[2]) != lbl.end()) ra = lbl[s[2]];
                else{
                    printout(s[2]);
                    assert(false);
                }
            }
            else assert(false);
            break;
        case BNE: //かなり怪しい
            if(s.size() == 3){
                rd = call(1, 0);
                if(lbl.find(s[2]) != lbl.end()) ra = lbl[s[2]];
                else{
                    printout(s[2]);
                    assert(false);
                }
            }
            else if(s.size() == 2){
                rd = 0;
                if(lbl.find(s[2]) != lbl.end()) ra = lbl[s[2]];
                else{
                    printout(s[2]);
                    assert(false);
                }
            }
            else assert(false);
            break;
        case CMPW:
            rd = call(1, 0);
            ra = call(2, 0);
            rb = call(3, 0);
            break;
        case FABS:
            rd = call(1, 0);
            ra = call(2, 0);
            break;
        case FADD:
            rd = call(1, 0);
            ra = call(2, 0);
            rb = call(3, 0);
            break;
        case FCMPU:
            rd = call(1, 0);
            ra = call(2, 0);
            rb = call(3, 0);
            break;
        case FCFIW:
            rd = call(1, 0);
            ra = call(2, 0);
            break;
        case FDIV:
            rd = call(1, 0);
            ra = call(2, 0);
            rb = call(3, 0);
            break;
        case FMR:
            rd = call(1, 0);
            ra = call(2, 0);
            break;
        case FMUL:
            rd = call(1, 0);
            ra = call(2, 0);
            rb = call(3, 0);
            break;
        case FNEG:
            rd = call(1, 0);
            ra = call(2, 0);
            break;
        case FSUB:
            rd = call(1, 0);
            ra = call(2, 0);
            rb = call(3, 0);
            break;
        case LFS:
            rd = call(1, 0);
            ra = call(2, 0);
            rb = call(2, 1);
            break;
        case LWZX:
            rd = call(1, 0);
            ra = call(2, 0);
            rb = call(3, 0);
            break;
        case MULLI:
            rd = call(1, 0);
            ra = call(2, 0);
            rb = call(3, 0);
            break;
        case MULHWU:
            rd = call(1, 0);
            ra = call(2, 0);
            rb = call(3, 0);
            break;
        case STFS:
            rd = call(1, 0);
            ra = call(2, 0);
            rb = call(2, 1);
            break;
        case SLWI: // 怪しい?
            rd = call(1, 0);
            ra = call(2, 0);
            rb = call(3, 0);
            break;
        case SRWI:
            rd = call(1, 0);
            ra = call(2, 0);
            rb = call(3, 0);
            break;
        case STWX:
            rd = call(1, 0);
            ra = call(2, 0);
            rb = call(3, 0);
            break;
        case NOT_INSTR:
            break;
        default:
            //std::cerr << "line " << mem.index << std::endl;
            //warning(s[0]);
            break;
    }
    return INSTR(opc, rd, ra, rb);
}


int opcode_to_bit(INSTR_KIND kind){
    switch (kind){
    case ADD: // d a b oe 0x10a rc
        return 0x1f;
    case ADDI: // d a simm
        return 0xe;
    case ADDIS: // d a simm
        return 0xf;
    case CMPWI: // だるい
        return 0x0b;
    case BGT: // bo bi bd aa lk
        // bc
        return 0x10;
    case BL: // li aa lk
         // b
        return 0x12;
    case BLR: // bo bi bd aa lk
         // bc
        return 0x13;
    case BCL: 
        // bc
        return 0x10;
    case BCTR: 
        // bcctr
        return 0x13;
    case LWZ: // d a d
        return 0x20;
    case LWZU: // d a d
        return 0x21;
    case STW:// s a d
        return 0x24;
    case STWU: // s a d
        return 0x25;
    case MFSPR: // d spr 0x153 0
        return 0x1f;
    case MR: // s a b 0x1bc rc
        return 0x1f;
    case MTSPR: // s spr 0x1d3 0
        return 0x1f;
    //1st
    case FCTIWZ:
        return 0x3f;
    case FCFIW:
        return 0x3f;
    case XORIS:
        return 0x1b;
    case B:
        return 0x12;
    case BLT:
        return 0x10;
    case BNE:
        return 0x10;
    case CMPW:
        return 0x1f;
    case FABS:
        return 0x3f;
    case FADD:
        return 0x3f;
    case FCMPU:
        return 0x3f;
    case FDIV:
        return 0x3f;
    case FMR:
        return 0x3f;
    case FMUL:
        return 0x3f;
    case FNEG:
        return 0x3f;
    case FSUB:
        return 0x3f;
    case LFS:
        return 0x30;
    case LWZX:
        return 0x1f;
    case MULLI:
        return 0x07;
    case MULHWU:
        return 0x1f;
    case SLWI:
        return 0x15;
    case SRWI:
        return 0x15;
    case STFS:
        return 0x36;
    case STWX:
        return 0x1f;
    case IN:
        return 0x0;
    case OUT:
        return 0x1;
    case FLUSH:
        return 0x2;
    default: // 生データが入っているとする
        return (~0x0); // 数字は 0, 文字列は0x1にする？
        break;
    }
}


void show_instr(INSTR_KIND instr, int d, int a, int b){
    switch (instr){
    case ADD:
        fprintf(stdout, "add r%d, r%d, r%d\n", d, a, b);
        return;
    case ADDI:
        if(a == 0) fprintf(stdout, "addi r%d, 0, %d\n", d, b);
        else fprintf(stdout, "addi r%d, r%d, %d\n", d, a, b);
        return;
    case ADDIS:
        if(a == 0) fprintf(stdout, "addis r%d, 0, %d\n", d, b);
        else fprintf(stdout, "addis r%d, r%d, %d\n", d, a, b);
        return;
    case CMPWI:
        fprintf(stdout, "cmpwi cr%d, r%d, %d\n", d, a, b);
        return;
    case BGT:
        if(d == 0) fprintf(stdout, "bgt %d\n", a);
        else fprintf(stdout, "bgt cr%d, %d\n", d / 4, a);
        return;
    case BL:
        fprintf(stdout, "bl %d\n", d / 4);
        return;
    case BLR:
        fprintf(stdout, "blr\n");
        return;
    case BCL:
        fprintf(stdout, "bcl, %d, %d, %d\n", d, a, b);
        return;
    case BCTR:
        fprintf(stdout, "bctr\n");
        return;
    case LWZ:
        if(b == 0) fprintf(stdout, "lwz, r%d, %d(0)\n", d, a);
        else fprintf(stdout, "lwz, r%d, %d(r%d)\n", d, a, b);
        return;
    case LWZU:
        fprintf(stdout, "lwzu r%d, %d(r%d)\n", d, a, b);
        return;
    case LWZX:
        fprintf(stdout, "lwzx r%d, r%d, r%d\n", d, a, b);
        return;
    case STW:
        if(b == 0) fprintf(stdout, "stw, r%d, %d(0)\n", d, a);
        else fprintf(stdout, "lwz, r%d, %d(r%d)\n", d, a, b);
        return;
    case STWU:
        fprintf(stdout, "stwu r%d, %d(r%d)\n", d, a, b);
        return;
    case MFSPR:
        fprintf(stdout, "mfspr r%d, %d\n", d, a);
        return;
    case MR:
        fprintf(stdout, "mr r%d, r%d\n", d, a);
        return;
    case MTSPR:
        fprintf(stdout, "mtspr %d, r%d\n", d, a);
        return;
    // 1st architecture
    case FCTIWZ:
        fprintf(stdout, "fctiwz f%d, f%d\n", d, a);
        return;
    case FCFIW:
        fprintf(stdout, "fctiwz f%d, r%d\n", d, a);
        return;
    case IN:
        fprintf(stdout, "in r%d, %d\n", d, a);
        return;
    case OUT:
        fprintf(stdout, "out r%d, %d\n", d, a);
        return;
    case FLUSH:
        fprintf(stdout, "flush");
        return;
    case XORIS:
        fprintf(stdout, "xoris r%d, r%d, %d\n", d, a, b);
        return;
    case B:
        fprintf(stdout, "b %d\n", d);
        return;
    case BLT:
        if(d == -1) fprintf(stdout, "blt %d\n", a);
        else fprintf(stdout, "blt cr%d, %d\n", d / 4, a);
        return;
    case BNE:
        if(d == -1) fprintf(stdout, "bne %d\n", a);
        else fprintf(stdout, "bne cr%d, %d\n", d / 4, a);
        return;
    case CMPW:
        fprintf(stdout, "cmpw cr%d, r%d, r%d\n", d, a, b);
        return;
    case FABS:
        fprintf(stdout, "fabs f%d, f%d\n", d, a);
        return;
    case FADD:
        fprintf(stdout, "fadd f%d, f%d, f%d\n", d, a, b);
        return;
    case FCMPU:
        fprintf(stdout, "fcmpu cr%d, f%d, f%d\n", d, a, b);
        return;
    case FDIV:
        fprintf(stdout, "fdiv f%d, f%d, f%d\n", d, a, b);
        return;
    case FMR:
        fprintf(stdout, "fmr f%d, f%d\n", d, a);
        return;
    case FMUL:
        fprintf(stdout, "fmul f%d, f%d, f%d\n", d, a, b);
        return;
    case FNEG:
        fprintf(stdout, "fneg f%d, f%d\n", d, a);
        return;
    case FSUB:
        fprintf(stdout, "fsub f%d, f%d, f%d\n", d, a, b);
        return;
    case LFS:
        fprintf(stdout, "lfs f%d, %d(r%d)\n", d, a, b);
        return;
    case MULLI:
        fprintf(stdout, "mulli r%d, r%d, %d\n", d, a, b);
        return;
    case MULHWU:
        fprintf(stdout, "mulhwu r%d, r%d, %d\n", d, a, b);
        return;
    case SLWI:
        fprintf(stdout, "slwi r%d, r%d, %d\n", d, a, b);
        return;
    case SRWI:
        fprintf(stdout, "srwi r%d, r%d, %d\n", d, a, b);
        return;
    case STFS:
        fprintf(stdout, "stfs f%d, %d(r%d)\n", d, a, b);
        return;
    case STWX:
        fprintf(stdout, "stwx r%d, r%d, r%d\n", d, a, b);
        return;
    case NOT_INSTR:
        return;
    default:
        fprintf(stdout, "## WARNING ##\nUNKNOWN_INSTRUCTION\n");
    }
}

void show_instr_binary(INSTR_KIND instr, int d, int a, int b){
    unsigned int res = opcode_to_bit(instr) << 26;
    switch (instr){
    case ADD:
        res |= ((d & bitmask(5)) << 21) | ((a & bitmask(5)) << 16) | ((b & bitmask(5)) << 11) | ((0x10A) << 1);
        break;
    case ADDI:
        res |= ((d & bitmask(5)) << 21) | ((a & bitmask(5)) << 16) | (bitmask(16) & b);
        break;
    case ADDIS:
        res |= ((d & bitmask(5)) << 21) | ((a & bitmask(5)) << 16) | (bitmask(16) & b);
        break;
    case CMPWI:
        res |= ((d & bitmask(3)) << 23) | ((a & bitmask(5)) << 16) | (bitmask(16) & b);
        break;
    case BGT:
        d = 4*d + 1;
        a /= 4;
        res |= (12 << 21) | ((d & bitmask(5)) << 16) | ((a & bitmask(14)) << 2);
        break;
    case BL:
        res |= ((d & bitmask(24)) << 2) | 1;
        break;
    case BLR:
        res |= (20 << 21) | (16 << 1);
        break;
    case BCL:
        d >>= 2;
        res |= ((d & bitmask(5)) << 21) | ((a & bitmask(5)) << 16) | ((b & bitmask(14)) << 2) | 1;
        break;
    case BCTR:
        res |= (20 << 21) | (528 << 1);
        break;
    case LWZ:
        res |= ((d & bitmask(5)) << 21) | ((b & bitmask(5)) << 16) | (a & bitmask(16));
        break;
    case LWZU:
        res |= ((d & bitmask(5)) << 21) | ((b & bitmask(5)) << 16) | (a & bitmask(16));
        break;
    case STW:
        res |= ((d & bitmask(5)) << 21) | ((b & bitmask(5)) << 16) | (a & bitmask(16));
        break;
    case STWU:
        res |= ((d & bitmask(5)) << 21) | ((b & bitmask(5)) << 16) | (a & bitmask(16));
        break;
    case MFSPR:
        res |= ((d & bitmask(5)) << 21) | ((a & bitmask(10)) << 11) | (339 << 1);
        break;
    case MR:
        res |= ((a & bitmask(5)) << 21) | ((d & bitmask(5)) << 16) | ((a & bitmask(5)) << 11) | (444 << 1);
        break;
    case MTSPR:
        res |= ((a & bitmask(5)) << 21) | ((d & bitmask(10)) << 11) | (467 << 1);
        break;
    // 1st architecture
    case FCTIWZ:
        res |= ((d & bitmask(5)) << 21) | ((a & bitmask(5)) << 11) | (15 << 1);
        break;
    case FCFIW:
        res |= ((d & bitmask(5)) << 21) | ((a & bitmask(5)) << 11) | (16 << 1);
        break;
    case IN:
        res |= ((d & bitmask(5)) << 21);
        break;
    case OUT:
        res |= ((d & bitmask(5)) << 21) | (a & bitmask(16));
        break;
    case FLUSH:
        break;
    case XORIS:
        res |= ((a & bitmask(5)) << 21) | ((d & bitmask(5)) << 16) | (b & bitmask(16));
        break;
    case B:
        d >>= 2;
        res |= ((d & bitmask(24)) << 2);
        break;
    case BLT:
        d *= 4;
        a /= 4;
        res |= (12 << 21) | ((d & bitmask(5)) << 16) | ((a & bitmask(14)) << 2);
        break;
    case BNE://怪しいのでとばす
        a /= 4;
        d = 4*d + 2;
        res |= (4 << 21) | ((d & bitmask(5)) << 16) | ((a & bitmask(14)) << 2);
        break;
    case CMPW:
        res |= ((d & bitmask(3)) << 23) | ((a & bitmask(5)) << 16) | ((b & bitmask(5)) << 11);
        break;
    case FABS:
        res |= ((d & bitmask(5)) << 21) | ((a & bitmask(5)) << 11) | (264 << 1);
        break;
    case FADD:
        res |= ((d & bitmask(5)) << 21) | ((a & bitmask(5)) << 16) | ((b & bitmask(5)) << 11) | (21 << 1);
        break;
    case FCMPU:
        res |= ((d & bitmask(3)) << 23) | ((a & bitmask(5)) << 16) | ((b & bitmask(5)) << 11);
        break;
    case FDIV:
        res |= ((d & bitmask(5)) << 21) | ((a & bitmask(5)) << 16) | ((b & bitmask(5)) << 11) | (18 << 1);
        break;
    case FMR:
        res |= res |= ((d & bitmask(5)) << 21) | ((a & bitmask(5)) << 11) | (72 << 1);
        break;
    case FMUL:
        res |= ((d & bitmask(5)) << 21) | ((a & bitmask(5)) << 16) | ((b & bitmask(5)) << 6) | (25 << 1);
        break;
    case FNEG:
        res |= ((d & bitmask(5)) << 21) | ((a & bitmask(5)) << 11) | (40 << 1);
        break;
    case FSUB:
        res |= ((d & bitmask(5)) << 21) | ((a & bitmask(5)) << 16) | ((b & bitmask(5)) << 11) | (20 << 1);
        break;
    case LFS:
        res |= ((d & bitmask(5)) << 21) | ((b & bitmask(5)) << 16) | (a & bitmask(16));
        break;
    case LWZX:
        res |= ((d & bitmask(5)) << 21) | ((a & bitmask(5)) << 16) | ((b & bitmask(5)) << 11) | (23 << 1);
        break;
    case MULLI:
        res |= ((d & bitmask(5)) << 21) | ((a & bitmask(5)) << 16) | (bitmask(16) & b);
        break;
    case MULHWU:
        res |= ((d & bitmask(5)) << 21) | ((a & bitmask(5)) << 16) | ((b & bitmask(5)) << 11) | (11 << 1);
        break;
    case SLWI:
        res |= ((a & bitmask(5)) << 21) | ((d & bitmask(5)) << 16) | ((b & bitmask(5)) << 11) | (((31 - b) & bitmask(5)) << 1);
        break;
    case SRWI:
        res |= ((a & bitmask(5)) << 21) | ((d & bitmask(5)) << 16) | ((32 - int(b & bitmask(5))) << 11) | ((b & bitmask(5)) << 6) | (31 << 1);
        break;
    case STFS:
        res |= ((d & bitmask(5)) << 21) | ((b & bitmask(5)) << 16) | (a & bitmask(16));
        break;
    case STWX:
        res |= ((d & bitmask(5)) << 21) | ((a & bitmask(5)) << 16) | ((b & bitmask(5)) << 11) | (151 << 1);
        break;
    default:
        printerr("## WARNING ##\nNOT instruction : maybe some raw data");
        break;
    }
    print_binary_int(res);
}