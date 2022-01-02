#pragma once
#include <stdint.h>
#include <map>
#include <cassert>
#include <string>
#include <stdio.h>
#include "struct.hpp"
#include "util.hpp"

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
    if(s == "sub") return SUB;
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
    if(s == "bctrl") return BCTRL;
    if(s == "blt") return BLT;
    if(s == "bne") return BNE;
    if(s == "bge") return BGE;
    if(s == "cmpw") return CMPW;
    if(s == "fadd") return FADD;
    if(s == "fcmpu") return FCMPU;
    if(s == "fdiv") return FDIV;
    if(s == "fmr") return FMR;   
    if(s == "fmul") return FMUL;
    if(s == "fneg") return FNEG;
    if(s == "fsub") return FSUB;
    if(s == "fsqrt") return FSQRT;
    if(s == "ffloor") return FFLOOR;
    if(s == "fhalf") return FHALF;
    if(s == "fcos") return FCOS;
    if(s == "fsin") return FSIN;
    if(s == "fatan") return FATAN;
    if(s == "halt") return HALT;
    if(s == "lfs") return LFS;
    if(s == "lfsx") return LFSX;
    if(s == "lwzx") return LWZX;
    if(s == "ori") return ORI;
    if(s == "mulli") return MULLI;
    if(s == "mulhwu") return MULHWU;
    if(s == "slwi") return SLWI;
    if(s == "srwi") return SRWI;
    if(s == "stfs") return STFS;
    if(s == "stfsx") return STFSX;
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
    case BCTRL:
        return "bctrl";
    case LWZ:
        return "lwz";
    case LWZU:
        return "lwzu";
    case SUB:
        return "sub";
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
    case BGE:
        return "bge";
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
    case FSQRT:
        return "fsqrt";
    case FFLOOR:
        return "ffloor";
    case FHALF:
        return "fhalf";
    case FCOS:
        return "fcos";
    case FSIN:
        return "fsin";
    case FATAN:
        return "fatan";
    case IN:
        return "in";
    case OUT:
        return "out";
    case ORI:
        return "ori";
    case FLUSH:
        return "flush";
    case LFS:
        return "lfs";
    case LFSX:
        return "lfsx";
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
    case STFSX:
        return "stfsx";
    case STWX:
        return "stwx";
    case HALT:
        return "halt";
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
                    std::cerr <<"Label in " << s << " not found" << std::endl;
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
                    std::cerr <<"Label in " << s << " not found" << std::endl;
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

INSTR recognize_instr(MEMORY_PRO& mem, const std::vector<std::string> &s){
    auto call = [&](int id, bool in_flag)->int{return internal_reg_number(s[id], in_flag, mem.lbl);};
    INSTR_KIND opc = opcode_of_instr(s[0]);
    INSTR_FORM f = mem.kind_to_form[opc];
    int rd = 0, ra = 0, rb = 0;
    if(f == D){
        rd = call(1, 0);
    }
    else if(f == DA || f == DIMM || f == FDA || f == FR || f == TSPR || f == FSPR){
        rd = call(1, 0);
        ra = call(2, 0);
    }   
    else if(f == DAB || f == DAIMM || f == CAB || f == CAIMM || f == CFF || f == FDAB || f == FRR){
        rd = call(1, 0);
        ra = call(2, 0);
        rb = call(3, 0);
    }
    else if(f == DAB2 || f == DAB3){
        rd = call(1, 0);
        ra = call(2, 0);
        rb = call(2, 1);
    }
    else if(f == BC){
        if(s.size() == 3){
            rd = call(1, 0);
            if(mem.lbl.find(s[2]) != mem.lbl.end()) ra = mem.lbl[s[2]];
            else{
                printout(s[2]);
                assert(false);
            }
        }
        else if(s.size() == 2){ // 怪しいかも
            rd = 0;
            if(mem.lbl.find(s[1]) != mem.lbl.end()) ra = mem.lbl[s[1]];
            else{
                printout(s[1]);
                assert(false);
            }
        }
        else assert(false);
    }
    else if(f == BLB){
        if(mem.lbl.find(s[1]) != mem.lbl.end()) rd = mem.lbl[s[1]];
        else{
            printout(s[1]);
            assert(false);
        }
    }
    else if(f == BDAL){
        rd = call(1, 0);
        ra = call(2, 0);
        if(mem.lbl.find(s[3]) != mem.lbl.end()) rb = mem.lbl[s[3]];
        else{
            printout(s[3]);
            assert(false);
        }
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
    case BCTRL:
        return 0x13;
    case LWZ: // d a d
        return 0x20;
    case LWZU: // d a d
        return 0x21;
    case SUB: 
        return 0x1f;
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
    case BGE:
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
    case FSQRT:
        return 0x3f;
    case FFLOOR:
        return 0x3f;
    case FHALF:
        return 0x3f;
    case FSIN:
        return 0x3f;
    case FCOS:
        return 0x3f;
    case FATAN:
        return 0x3f;
    case LFS:
        return 0x30;
    case LFSX:
        return 0x1f;
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
        return 0x34;
    case STFSX:
        return 0x1f;
    case STWX:
        return 0x1f;
    case IN:
        return 0x0;
    case OUT:
        return 0x1;
    case ORI:
        return 0x18;
    case FLUSH:
        return 0x2;
    case HALT:
        return 0x3f;
    default: // 生データが入っているとする
        return (~0x0); // 数字は 0, 文字列は0x1にする？
        break;
    }
}

void show_instr(MEMORY& mem, INSTR_KIND instr, int d, int a, int b){
    INSTR_FORM f = mem.kind_to_form[instr];
    std::string s = opcode_to_string(instr);
    std::string label;
    switch (f){
        case D:
            printf("%s r%d\n", s.c_str(), d);
            return;
        case DA:
            printf("%s r%d, r%d\n", s.c_str(), d, a);
            return;
        case DIMM:
            printf("%s r%d, %d\n", s.c_str(), d, a);
            return;
        case DAB:
            printf("%s r%d, r%d, r%d\n", s.c_str(), d, a, b);
            return;
        case DAB2:
            if(b == 0) printf("%s, r%d, %d(0)\n", s.c_str(), d, a);
            else printf("%s, r%d, %d(r%d)\n", s.c_str(), d, a, b);
            return;
        case DAB3:
            if(b == 0) printf("%s, f%d, %d(0)\n", s.c_str(), d, a);
            else printf("%s, f%d, %d(r%d)\n", s.c_str(), d, a, b);
            return;
        case DAIMM:
            if(a != 0) printf("%s r%d, r%d, %d\n", s.c_str(), d, a, b);
            else printf("%s r%d, 0, %d\n", s.c_str(), d, b);
            return;
        case CAB:
            printf("%s cr%d, r%d, r%d\n", s.c_str(), d, a, b);
            return;
        case CAIMM:
            printf("%s cr%d, r%d, %d\n", s.c_str(), d, a, b);
            return;
        case CFF:
            printf("%s cr%d, f%d, f%d\n", s.c_str(), d, a, b);
            return;
        case BC:
            if(mem.inv.count(a)) label = mem.inv[a];
            else label = std::to_string(a);
            if(d == 0) printf("%s %s\n", s.c_str(), label.c_str());
            else printf("%s cr%d, %s\n", s.c_str(), d, label.c_str());
            return;
        case BDAL:
            if(mem.inv.count(b)) label = mem.inv[b];
            else label = std::to_string(b);
            printf("%s %d, %d, %s\n", s.c_str(), d, a, label.c_str());
            return;
        case BLB:
            if(mem.inv.count(d)) label = mem.inv[d];
            else label = std::to_string(d);
            printf("%s %s\n", s.c_str(), label.c_str());
            return;
        case FDAB:
            printf("%s f%d, f%d, f%d\n", s.c_str(), d, a, b);
            return;
        case FDA:
            printf("%s f%d, f%d\n", s.c_str(), d, a);
            return;
        case FR:
            printf("%s f%d, r%d\n", s.c_str(), d, a);
            return;
        case FRR:
            printf("%s f%d, r%d, r%d\n", s.c_str(), d, a, b);
            return;
        case TSPR:
            printf("%s %d, r%d\n", s.c_str(), d, a);
            return;
        case FSPR:
            printf("%s r%d, %d\n", s.c_str(), d, a);
            return;
        case N:
            printf("%s\n", s.c_str());
            return;
        case NOT:
            printf("%d", d);
            return;
        default:
            printf("this may not be an instruction\n");
            assert(false);
            return;
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
    case SUB:
        res |= ((d & bitmask(5)) << 21) | ((a & bitmask(5)) << 16) | ((b & bitmask(5)) << 11) | ((0x10b) << 1);
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
        d /= 4;
        res |= ((d & bitmask(24)) << 2) | 1;
        break;
    case BLR:
        res |= (20 << 21) | (16 << 1);
        break;
    case BCTR:
        res |= (20 << 21) | (528 << 1);
        break;
    case BCTRL:
        res |= (20 << 21) | (528 << 1) | 1;
        break;
    case BCL:
        b /= 4;
        res |= ((d & bitmask(5)) << 21) | ((a & bitmask(5)) << 16) | ((b & bitmask(14)) << 2) | 1;
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
    case HALT:
        res = (~0);
        break;
    case ORI:
        res |= ((a & bitmask(5)) << 21) | ((d & bitmask(5)) << 16) | (b & bitmask(16));
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
    case BGE:
        d *= 4;
        a /= 4;
        res |= (4 << 21) | ((d & bitmask(5)) << 16) | ((a & bitmask(14)) << 2);
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
        res |= ((d & bitmask(5)) << 21) | ((a & bitmask(5)) << 11) | (72 << 1);
        break;
    case FMUL:
        res |= ((d & bitmask(5)) << 21) | ((a & bitmask(5)) << 16) | ((b & bitmask(5)) << 6) | (25 << 1);
        break;
    case FSQRT:
        res |= ((d & bitmask(5)) << 21) | ((a & bitmask(5)) << 11) | (22 << 1);
        break;
    case FSIN:
        res |= ((d & bitmask(5)) << 21) | ((a & bitmask(5)) << 11) | (28 << 1);
        break;
    case FCOS:
        res |= ((d & bitmask(5)) << 21) | ((a & bitmask(5)) << 11) | (29 << 1);
        break;
    case FATAN:
        res |= ((d & bitmask(5)) << 21) | ((a & bitmask(5)) << 11) | (30 << 1);
        break;
    case FFLOOR:
        res |= ((d & bitmask(5)) << 21) | ((a & bitmask(5)) << 11) | (64 << 1);
        break;
    case FHALF:
        res |= ((d & bitmask(5)) << 21) | ((a & bitmask(5)) << 11) | (70 << 1);
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
    case LFSX:
        res |= ((d & bitmask(5)) << 21) | ((a & bitmask(5)) << 16) | ((b & bitmask(5)) << 11) | (535 << 1);
        break;
    case STFSX:
        res |= ((d & bitmask(5)) << 21) | ((a & bitmask(5)) << 16) | ((b & bitmask(5)) << 11) | (663 << 1);
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
        res |= ((a & bitmask(5)) << 21) | ((d & bitmask(5)) << 16) | ((int(b & bitmask(5))) << 11) | ((b & bitmask(5)) << 6) | (31 << 1);
        break;
    case STFS:
        res |= ((d & bitmask(5)) << 21) | ((b & bitmask(5)) << 16) | (a & bitmask(16));
        break;
    case STWX:
        res |= ((d & bitmask(5)) << 21) | ((a & bitmask(5)) << 16) | ((b & bitmask(5)) << 11) | (151 << 1);
        break;
    case NOT_INSTR:
        res = d;
        break;
    default:
        assert(false);
        break;
    }
    print_binary_int_nspace(res);
}