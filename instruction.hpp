#pragma once
#include <stdint.h>
#include <map>
#include <cassert>
#include <string>
#include <stdio.h>
#include "struct.hpp"
#include "util.hpp"

enum INSTR_KIND opcode_of_instr(const std::string& s){
    if(s == "in") return IN;
    if(s == "out") return OUT;

    if(s == "flush") return FLUSH;
    if(s == "halt") return HALT;

    if(s == "add") return ADD;
    if(s == "addi") return ADDI;
    if(s == "addis") return ADDIS;
    if(s == "sub") return SUB;
    if(s == "slwi") return SLWI;
    if(s == "srwi") return SRWI;
    if(s == "mul16") return MUL16;
    if(s == "mul16i") return MUL16I;
    if(s == "ori") return ORI;

    if(s == "cmp") return CMP;
    if(s == "cmpi") return CMPI;
    if(s == "fcmp") return FCMP;

    if(s == "b") return B;
    if(s == "bl") return BL;
    if(s == "blr") return BLR;
    if(s == "beq") return BEQ;
    if(s == "ble") return BLE;
    if(s == "bge") return BGE;

    if(s == "lw") return LW;
    if(s == "lwx") return LWX;
    if(s == "sw") return SW;
    if(s == "swx") return SWX;
    if(s == "lwi") return LWI;

    if(s == "mflr") return MFLR;
    if(s == "mv") return MV;
    if(s == "mtlr") return MTLR;

    if(s == "fadd") return FADD;
    if(s == "fsub") return FSUB;
    if(s == "fmul") return FMUL;
    if(s == "fdiv") return FDIV;
    if(s == "faddmul") return FADDMUL;
    if(s == "fabs") return FABS;
    if(s == "fneg") return FNEG;
    if(s == "fsqrt") return FSQRT;
    if(s == "ffloor") return FFLOOR;
    if(s == "fhalf") return FHALF;
    if(s == "fsin") return FSIN;
    if(s == "fcos") return FCOS;
    if(s == "fatan") return FATAN;
    if(s == "ftoi") return FTOI;
    if(s == "itof") return ITOF;

    std::cerr << s << " is unknown token\n";
    return INSTR_UNKNOWN;
}

std::string opcode_to_string(INSTR_KIND kind){
    switch (kind){
    case IN:
        return "in";
    case OUT:
        return "out";

    case FLUSH:
        return "flush";
    case HALT:
        return "halt";

    case ADD:
        return "add";
    case ADDI:
        return "addi";
    case ADDIS:
        return "addis";
    case SUB:
        return "sub";
    case SLWI:
        return "slwi";
    case SRWI:
        return "srwi";
    case MUL16:
        return "mul16";
    case MUL16I:
        return "mul16i";
    case ORI:
        return "ori";

    case CMP:
        return "cmp";
    case CMPI:
        return "cmpi";
    case FCMP:
        return "fcmp";

    case B:
        return "b";
    case BL:
        return "bl";
    case BEQ:
        return "beq";
    case BLE:
        return "ble";
    case BGE:
        return "bge";
    case BLR:
        return "blr";

    case LW:
        return "lw";
    case LWX:
        return "lwx";
    case SW:
        return "sw";
    case SWX:
        return "swx";
    case LWI:
        return "lwi";

    case MFLR:
        return "mflr";
    case MV:
        return "mv";
    case MTLR:
        return "mtlr";

    case FADD:
        return "fadd";
    case FSUB:
        return "fsub";
    case FMUL:
        return "fmul";
    case FDIV:
        return "fdiv";
    case FADDMUL:
        return "faddmul";
    case FABS:
        return "fabs";
    case FNEG:
        return "fneg";
    case FSQRT:
        return "fsqrt";
    case FFLOOR:
        return "ffloor";
    case FHALF:
        return "fhalf";
    case FSIN:
        return "fsin";
    case FCOS:
        return "fcos";
    case FTOI:
        return "ftoi";
    case ITOF:
        return "itof";
    case FATAN:
        return "fatan";
    case NOT_INSTR:
        return "not_instr";
    default:
        return "instr_unknown";
    }
    return "-1";
}

std::pair<int, int> find_paren(const std::string& s){
    int lparen = -1, rparen = (int)s.size() - 1;
    for(int i = (int)s.size() - 2; i >= 0; i--){
        if(s[i] == '('){
            lparen = i;
            break;
        }
    }
    return std::make_pair(lparen, rparen);
}

int internal_reg_number(const std::string& s, bool in_paren, std::map<std::string, int>& lbl){
    if(in_paren){
        auto [lparen, rparen] = find_paren(s);
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

void report(const std::vector<std::string>& s){
    std::cerr << "illegal assembly" << std::endl;
    for(int i = 0; i < (int)s.size(); i++){
        std::cerr << s[i] << " ";
    }
    std::cerr << std::endl;
}

void asm_checker(const std::vector<std::string>& s, INSTR_FORM f){
    if(f == R){
        if(s.size() != 2) report(s), exit(1);
        char c = s[1][0];
        int k = stoi(s[1].substr(1, s[1].size() - 1));
        if(!(c == 'r' && 0 <= k && k <= 63)) report(s), exit(1);
    }
    else if(f == RR){
        if(s.size() != 3) report(s), exit(1);
        char c1 = s[1][0];
        int k1 = stoi(s[1].substr(1, s[1].size() - 1));
        char c2 = s[2][0];
        int k2 = stoi(s[2].substr(1, s[2].size() - 1));
        if(!(c1 == 'r' && 0 <= k1 && k1 <= 63)) report(s), exit(1);
        if(!(c2 == 'r' && 0 <= k2 && k2 <= 63)) report(s), exit(1);
    }
    else if(f == RRR){
        if(s.size() != 4) report(s), exit(1);
        char c1 = s[1][0];
        int k1 = stoi(s[1].substr(1, s[1].size() - 1));
        char c2 = s[2][0];
        int k2 = stoi(s[2].substr(1, s[2].size() - 1));
        char c3 = s[3][0];
        int k3 = stoi(s[3].substr(1, s[3].size() - 1));
        if(!(c1 == 'r' && 0 <= k1 && k1 <= 63)) report(s), exit(1);
        if(!(c2 == 'r' && 0 <= k2 && k2 <= 63)) report(s), exit(1);
        if(!(c3 == 'r' && 0 <= k3 && k3 <= 63)) report(s), exit(1);
    }
    else if(f == RRRR){
        if(s.size() != 5) report(s), exit(1);
        char c1 = s[1][0];
        int k1 = stoi(s[1].substr(1, s[1].size() - 1));
        char c2 = s[2][0];
        int k2 = stoi(s[2].substr(1, s[2].size() - 1));
        char c3 = s[3][0];
        int k3 = stoi(s[3].substr(1, s[3].size() - 1));
        char c4 = s[4][0];
        int k4 = stoi(s[4].substr(1, s[4].size() - 1));
        if(!(c1 == 'r' && 0 <= k1 && k1 <= 63)) report(s), exit(1);
        if(!(c2 == 'r' && 0 <= k2 && k2 <= 63)) report(s), exit(1);
        if(!(c3 == 'r' && 0 <= k3 && k3 <= 63)) report(s), exit(1);
        if(!(c4 == 'r' && 0 <= k4 && k4 <= 63)) report(s), exit(1);
    }
    else if(f == RI){
        if(s.size() != 3) report(s), exit(1);
        char c = s[1][0];
        int k = stoi(s[1].substr(1, s[1].size() - 1));
        if(!(c == 'r' && 0 <= k && k <= 63)) report(s), exit(1);
        if(!((s[2][0] == '0' && (s[2][1] == 'x' || s[2][1] == 'b')) || ('0' <= s[2][0] && s[2][0] <= '9') || (s[2][0] == '-') || (s[3].substr(0, 2) == "lo" || s[3].substr(0, 2) == "ha"))) report(s), exit(1);
    }
    else if(f == RIR){
        if(s.size() != 3) report(s), exit(1);
        char c1 = s[1][0];
        int k1 = stoi(s[1].substr(1, s[1].size() - 1));
        if(!(c1 == 'r' && 0 <= k1 && k1 <= 63)) report(s), exit(1);
        if(!((s[2][0] == '0' && (s[2][1] == 'x' || s[2][1] == 'b')) || ('0' <= s[2][0] && s[2][0] <= '9') || (s[2][0] == '-') || (s[3].substr(0, 2) == "lo" || s[3].substr(0, 2) == "ha"))) report(s), exit(1);
        if(s[2].back() != ')') report(s), exit(1);
    }
    else if(f == RRI){
        if(s.size() != 4) report(s), exit(1);
        char c1 = s[1][0];
        int k1 = stoi(s[1].substr(1, s[1].size() - 1));
        char c2 = s[2][0];
        int k2 = stoi(s[2].substr(1, s[2].size() - 1));
        if(!(c1 == 'r' && 0 <= k1 && k1 <= 63)) report(s), exit(1);
        if(!(c2 == 'r' && 0 <= k2 && k2 <= 63)) report(s), exit(1);
        if(!((s[3][0] == '0' && (s[3][1] == 'x' || s[3][1] == 'b')) || ('0' <= s[3][0] && s[3][0] <= '9') || (s[3][0] == '-') || (s[3].substr(0, 2) == "lo" || s[3].substr(0, 2) == "ha"))) report(s), exit(1);
    }
    else if(f == RL){
        if(s.size() != 3) report(s), exit(1);
        char c1 = s[1][0];
        int k1 = stoi(s[1].substr(1, s[1].size() - 1));
        if(!(c1 == 'r' && 0 <= k1 && k1 <= 63)) report(s), exit(1);
    }
    else if(f == L){
        if(s.size() != 2) report(s), exit(1);
    }
    else if(f == N){
        if(s.size() != 1) report(s), exit(1);
    }
}

// need to be fixed
INSTR recognize_instr(MEMORY_PRO& mem, const std::vector<std::string> &s){
    auto call = [&](int id, bool in_flag)->int{return internal_reg_number(s[id], in_flag, mem.lbl);};
    INSTR_KIND opc = opcode_of_instr(s[0]);
    INSTR_FORM f = mem.kind_to_form[opc];
    asm_checker(s, f);
    int rd = 0, ra = 0, rb = 0;
    if(f == R){
        rd = call(1, 0);
    }
    else if(f == RR || f == RI){
        rd = call(1, 0);
        ra = call(2, 0);
    }   
    else if(f == RRR || f == RRI){
        rd = call(1, 0);
        ra = call(2, 0);
        rb = call(3, 0);
    }
    else if(f == RRRR){
        rd = call(1, 0);
        ra = (call(2, 0) << 6) | call(3, 0);
        rb = call(4, 0);
    }
    else if(f == RIR){
        rd = call(1, 0);
        ra = call(2, 0);
        rb = call(2, 1);
    }
    else if(f == RL){
        rd = call(1, 0);
        if(s.size() == 3){
            if(mem.lbl.find(s[2]) != mem.lbl.end()) ra = mem.lbl[s[2]];
            else{
                printout(s[1]);
                assert(false);
            }
        }
        else assert(false);
    }
    else if(f == L){
        if(s.size() == 2){ // 怪しいかも
            if(mem.lbl.find(s[1]) != mem.lbl.end()) rd = mem.lbl[s[1]];
            else{
                printout(s[1]);
                assert(false);
            }
        }
        else assert(false);
    }

    return INSTR(opc, rd, ra, rb);
}

int opcode_to_bit(INSTR_KIND kind){
    switch (kind){
    case IN:
        return 0b0;
    case OUT:
        return 0b0;
    
    case FLUSH:
        return 0b0;
    case HALT:
        return 0b0;
    
    case ADD:
        return 0b1001;
    case ADDI: // d a simm
        return 0b0001;
    case ADDIS: // d a simm
        return 0b0010;
    case SUB: 
        return 0b1001;
    case SLWI:
        return 0b0011;
    case SRWI:
        return 0b0100;
    case MUL16:
        return 0b1001;
    case MUL16I:
        return 0b0101;
    case ORI:
        return 0b0110;

    case CMP:
        return 0b1010;
    case CMPI:
        return 0b1010;
    case FCMP:
        return 0b1010;

    case B:
        return 0b1010;
    case BL:
        return 0b1010;
    case BLE:
        return 0b1010;
    case BEQ:
        return 0b1010;
    case BGE:
        return 0b1010;
    case BLR:
        return 0b1010;

    case LW: // d a d
        return 0b0111;
    case LWX:
        return 0b1011;
    case SW:// s a d
        return 0b1000;
    case SWX:
        return 0b1011;
    case LWI: 
        return 0b1100;

    case MFLR: // d spr 0x153 0
        return 0b1011;
    case MV: // s a b 0x1bc rc
        return 0b1011;
    case MTLR: // s spr 0x1d3 0
        return 0b1011;
    
    case FADD:
        return 0b1001;
    case FSUB:
        return 0b1001;
    case FMUL:
        return 0b1001;
    case FDIV:
        return 0b1001;
    case FADDMUL:
        return 0b1001;
    case FABS:
        return 0b1001;
    case FNEG:
        return 0b1001;
    case FSQRT:
        return 0b1001;
    case FFLOOR:
        return 0b1001;
    case FHALF:
        return 0b1001;
    case FSIN:
        return 0b1001;
    case FCOS:
        return 0b1001;
    case FATAN:
        return 0b1001;
    case FTOI:
        return 0b1001;
    case ITOF:
        return 0b1001;

    default: // 生データが入っているとする
        return (~0x0); // 数字は 0, 文字列は0x1にする？
        break;
    }
}


// need to be fixed
void show_instr(MEMORY& mem, INSTR_KIND instr, int d, int a, int b){
    INSTR_FORM f = mem.kind_to_form[instr];
    std::string s = opcode_to_string(instr);
    std::string label;
    switch (f){
        case R:
            printf("%s r%d\n", s.c_str(), d);
            return;
        case RR:
            printf("%s r%d, r%d\n", s.c_str(), d, a);
            return;
        case RRR:
            printf("%s r%d, r%d, r%d\n", s.c_str(), d, a, b);
            return;
        case RRRR:
            printf("%s r%d, r%d, r%d, r%d\n", s.c_str(), d, a >> 6, a & bitmask(6), b);
            return;
        case RIR:
            printf("%s, r%d, %d(r%d)\n", s.c_str(), d, a, b);
            return;
        case RI:
            printf("%s r%d, %d\n", s.c_str(), d, a);
            return;
        case RRI:
            printf("%s r%d, r%d, %d\n", s.c_str(), d, a, b);
            return;
        case L:
            if(mem.inv.count(d)) label = mem.inv[d];
            else label = std::to_string(d);
            printf("%s %s\n", s.c_str(), label.c_str());
            return;
        case RL:
            if(mem.inv.count(a)) label = mem.inv[a];
            else label = std::to_string(a);
            printf("%s r%d, %s\n", s.c_str(), d, label.c_str());
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


void show_instr_binary(INSTR_KIND instr, int d, int a, int b, bool nl = true){
    unsigned int res = opcode_to_bit(instr) << 28;
    switch (instr){
    case IN:
        res |= ((d & bitmask(6)) << 22) | 0b00;
        break;
    case OUT:
        res |= ((d & bitmask(6)) << 16) | 0b01;
        break;

    case FLUSH:
        res |= 0b10;
        break;
    case HALT:
        res |= 0b11;
        break;

    case ADD:
        res |= ((d & bitmask(6)) << 22) | ((a & bitmask(6)) << 16) | ((b & bitmask(6)) << 10) | (0 << 2) | 0b01;
        break;
    case ADDI:
        res |= ((d & bitmask(6)) << 22) | ((a & bitmask(6)) << 16) | (bitmask(16) & b);
        break;
    case ADDIS:
        res |= ((d & bitmask(6)) << 22) | ((a & bitmask(6)) << 16) | (bitmask(16) & b);
        break;
    case SUB:
        res |= ((d & bitmask(6)) << 22) | ((a & bitmask(6)) << 16) | ((b & bitmask(6)) << 10) | (1 << 2) | 0b01;
        break;
    case SLWI:
        res |= ((d & bitmask(6)) << 22) | ((a & bitmask(6)) << 16) | (bitmask(16) & b);
        break;
    case SRWI:
        res |= ((d & bitmask(6)) << 22) | ((a & bitmask(6)) << 16) | (bitmask(16) & b);
        break;
    case MUL16:
        res |= ((d & bitmask(6)) << 22) | ((a & bitmask(6)) << 16) | ((b & bitmask(16)) << 10) | (2 << 2) | 0b01;
        break;
    case MUL16I:
        res |= ((d & bitmask(6)) << 22) | ((a & bitmask(6)) << 16) | (bitmask(16) & b);
        break;
    case ORI:
        res |= ((d & bitmask(6)) << 22) | ((a & bitmask(6)) << 16) | (b & bitmask(16));
        break;

    case CMP:
        res |= ((d & bitmask(6)) << 16) | ((a & bitmask(6)) << 10) | (0 << 2) | 0b00;
        break;
    case CMPI: // rAの位置注意
        res |= ((d & bitmask(6)) << 22) | ((a & bitmask(16)) << 6) | (0 << 2) | 0b01;
        break;
    case FCMP:
        res |= ((d & bitmask(6)) << 16) | ((a & bitmask(6)) << 10) | (0 << 2) | 0b11;
        break;

    case B:
        res |= ((d & bitmask(22)) << 6) | (0 << 2) | 0b10;
        break;
    case BL:
        res |= ((d & bitmask(22)) << 6) | (1 << 2) | 0b10;
        break;
    case BEQ:
        res |= ((d & bitmask(22)) << 6) | (2 << 2) | 0b10;
        break;
    case BLE:
        res |= ((d & bitmask(22)) << 6) | (3 << 2) | 0b10;
        break;
    case BGE:
        res |= ((d & bitmask(22)) << 6) | (4 << 2) | 0b10;
        break;
    case BLR:
        res |= ((d & bitmask(22)) << 6) | (5 << 2) | 0b10;
        break;

    case LW:
        res |= ((d & bitmask(6)) << 22) | ((b & bitmask(6)) << 16) | (a & bitmask(16));
        break;
    case LWX:
        res |= ((d & bitmask(6)) << 22) | ((a & bitmask(6)) << 16) | ((b & bitmask(6)) << 10) | (0 << 2) | 0b00;
        break;
    case SW:
        res |= ((d & bitmask(6)) << 22) | ((b & bitmask(6)) << 16) | (a & bitmask(16));
        break;
    case SWX:
        res |= ((d & bitmask(6)) << 22) | ((a & bitmask(6)) << 16) | ((b & bitmask(6)) << 10) | (0 << 2) | 0b01;
        break;
    case LWI:
        res |= ((d & bitmask(6)) << 22) | (a & bitmask(22));
        break;

    case MFLR:
        res |= ((d & bitmask(6)) << 22) | (1 << 2) | 0b11;
        break;
    case MV:
        res |= ((d & bitmask(6)) << 22) | ((a & bitmask(6)) << 16) | (0 << 2) | 0b10;
        break;
    case MTLR:
        res |= ((d & bitmask(6)) << 22) | (0 << 2) | 0b11;
        break;

    
    case FADD:
        res |= ((d & bitmask(6)) << 22) | ((a & bitmask(6)) << 16) | ((b & bitmask(6)) << 10) | (3 << 2) | 0b01;
        break;
    case FSUB:
        res |= ((d & bitmask(6)) << 22) | ((a & bitmask(6)) << 16) | ((b & bitmask(6)) << 10) | (4 << 2) | 0b01;
        break;
    case FMUL:
        res |= ((d & bitmask(6)) << 22) | ((a & bitmask(6)) << 16) | ((b & bitmask(6)) << 10) | (5 << 2) | 0b01;
        break;
    case FDIV:
        res |= ((d & bitmask(6)) << 22) | ((a & bitmask(6)) << 16) | ((b & bitmask(6)) << 10) | (6 << 2) | 0b01;
        break;
    case FADDMUL:
        res |= ((d & bitmask(6)) << 22) | (((a >> 6) & bitmask(6)) << 16) | (a & bitmask(6) << 10) | ((b & bitmask(6)) << 4) | (0 << 2) | 0b01;
        break;
    case FABS:
        res |= ((d & bitmask(6)) << 22) | ((a & bitmask(6)) << 16) | (0 << 2) | 0b00;
        break;
    case FNEG:
        res |= ((d & bitmask(6)) << 22) | ((a & bitmask(6)) << 16) | (1 << 2) | 0b00;
        break;
    case FSQRT:
        res |= ((d & bitmask(6)) << 22) | ((a & bitmask(6)) << 16) | (2 << 2) | 0b00;
        break;
    case FFLOOR:
        res |= ((d & bitmask(6)) << 22) | ((a & bitmask(6)) << 16) | (3 << 2) | 0b00;
        break;
    case FHALF:
        res |= ((d & bitmask(6)) << 22) | ((a & bitmask(6)) << 16) | (4 << 2) | 0b00;
        break;
    case FSIN:
        res |= ((d & bitmask(6)) << 22) | ((a & bitmask(6)) << 16) | (5 << 2) | 0b00;
        break;
    case FCOS:
        res |= ((d & bitmask(6)) << 22) | ((a & bitmask(6)) << 16) | (6 << 2) | 0b00;
        break;
    case FATAN:
        res |= ((d & bitmask(6)) << 22) | ((a & bitmask(6)) << 16) | (7 << 2) | 0b00;
        break;
    case FTOI:
        res |= ((d & bitmask(6)) << 22) | ((a & bitmask(6)) << 16) | (8 << 2) | 0b00;
        break;
    case ITOF:
        res |= ((d & bitmask(6)) << 22) | ((a & bitmask(6)) << 16) | (9 << 2) | 0b00;
        break;

    case NOT_INSTR:
        res = d;
        break;
    default:
        assert(false);
        break;
    }
    print_binary_int_nspace(res, nl);
}