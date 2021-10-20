#include "instruction.hpp"
#include "util.hpp"
#include "struct.hpp"

int internal_reg_number(const std::string& s, bool in_paren, std::map<std::string, int>& lbl){
    if(in_paren){
        int lparen = -1, rparen = s.size() - 1;
        for(int i = s.size() - 2; i >= 0; i--){
            if(s[i] == '('){
                lparen = i;
                break;
            }
        }
        return internal_reg_number(s.substr(lparen + 1, rparen - lparen - 1), 0, lbl);
    }
    if(s[0] == 'l' && s[1] == 'o' || s[0] == 'h' && s[1] == 'a'){ // lo16() or ha16()
        auto calc = [&]()->int{
            int lparen = 4, rparen = -1, minus = 0;
            for(int i = 5; i < s.size(); i++){
                if(s[i] == '-') minus = i;
                if(s[i] == ')'){
                    rparen = i;
                    break;
                }
            }
            assert(rparen != -1);
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
        return stoi(s.substr(2, s.size() - 2));
    }
    else if(s[0] == 'c'){ // cr
        return stoi(s.substr(2, s.size() - 2));
    }
    else{ //数字から始まる
        int lparen = -1;
        for(int i = 0; i < s.size(); i++){
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



void recognize_instr(MEMORY& mem, const std::vector<std::string> &s){
    auto call = [&](int id, bool in_flag)->int{return internal_reg_number(s[id], in_flag, mem.lbl);};
    INSTR_KIND opc = opcode_of_instr(s[0]);
    int rd = 0, ra = 0, rb = 0, sub = 0;
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
                if(mem.lbl.find(s[2]) != mem.lbl.end()) ra = mem.lbl[s[2]];
                else assert(false);
            }
            else if(s.size() == 2){
                if(mem.lbl.find(s[2]) != mem.lbl.end()) ra = mem.lbl[s[2]];
                else assert(false);
            }
            else assert(false);
            break;
        case BL:
            if(mem.lbl.find(s[1]) != mem.lbl.end()) rd = mem.lbl[s[1]];
            else assert(false);
            break;
        case BLR: // 無条件分岐 to LR
            break;
        case BCL: // 注 : 常にラベルがくると仮定
            rd = call(1, 0);
            ra = call(2, 0);
            if(mem.lbl.find(s[3]) != mem.lbl.end()) rb = mem.lbl[s[3]];
            else assert(false);
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
        case NOT_INSTR:
            break;
        default:
            //std::cerr << "line " << mem.index << std::endl;
            //warning(s[0]);
            break;
    }
    mem.instr[mem.index >> 2] = INSTR(opc, rd, ra, rb);
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
        return 0x10;
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
    default: // 生データが入っているとする
        return 0x0; // 数字は 0, 文字列は0x1にする？
        break;
    }
}

enum INSTR_KIND opcode_of_instr(const std::string& s){
    if(s == "add") return ADD;
    if(s == "addi") return ADDI;
    if(s == "addis") return ADDIS;
    if(s == "cmpwi") return CMPWI;
    if(s == "bcl") return BCL;
    if(s == "bctr") return BCTR;
    if(s == "bgt") return BGT;
    if(s == "bl") return BL;
    if(s == "blr") return BLR;
    if(s == "lwz") return LWZ;
    if(s == "lwzu") return LWZU;
    if(s == "stw") return STW;
    if(s == "stwu") return STWU;
    if(s == "mfspr") return MFSPR;
    if(s == "mr") return MR;
    if(s == "mtspr") return MTSPR;
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
    case NOT_INSTR:
        return "not_instr";
    default:
        return "instr_unknown";
    }
    return "-1";
}