#include "decode.hpp"
#include "struct.hpp"

enum INSTR_KIND opcode_of_instr(const std::string& s){
    if(s == "add") return ADD;
    if(s == "addi") return ADDI;
    if(s == "li") return LI;
    if(s == "subi") return SUBI;
    if(s == "cmpwi") return CMPWI;
    if(s == "bgt") return BGT;
    if(s == "bl") return BL;
    if(s == "blr") return BLR;
    if(s == "lwz") return LWZ;
    if(s == "lmw") return LMW;
    if(s == "stw") return STW;
    if(s == "stmw") return STMW;
    if(s == "stwu") return STWU;
    if(s == "mflr") return MFLR;
    if(s == "mr") return MR;
    if(s == "mtlr") return MTLR;
    return INSTR_UNKNOWN;
}

int reg_number(const std::string& s, int flag){
    if(flag == 0){ // gpr
        return stoi(s.substr(1, s.size() - 1));
    }
    else if(flag == 1){ // fpr
        return stoi(s.substr(2, s.size() - 2));
    }
    else if(flag == 2){ // cr
        return stoi(s.substr(2, s.size() - 2));
    }
    else if(flag == 3){ // lr
        return -1;
    }
    else if(flag == 4){ // ctr
        return -1;
    }
    else if(flag == 5){ // a in a(rd)
        int idx = s.find('(');
        return stoi(s.substr(0, idx));
    }
    else if(flag == 6){ // d in a(rd)
        int idx = s.find('(') + 2;
        return stoi(s.substr(idx, s.size() - idx));
    }
    else{
        assert(false);
        return -1;
    }

}

void recognize_instr(MEMORY& mem, const std::vector<std::string> &s, std::map<std::string, int> &label){
    INSTR_KIND opc = opcode_of_instr(s[0]);
    int rd = -1, ra = -1, rb = -1;
    switch (opc){
        case ADD:
            rd = reg_number(s[1], 0);
            ra = reg_number(s[2], 0);
            rb = reg_number(s[3], 0);
            break;
        case ADDI:
            rd = reg_number(s[1], 0);
            ra = reg_number(s[2], 0);
            rb = stoi(s[3]);
            break;
        case LI:
            rd = reg_number(s[1], 0);
            ra = 0;
            rb = stoi(s[2]);
            break;
        case SUBI:
            rd = reg_number(s[1], 0);
            ra = reg_number(s[2], 0);
            rb = stoi(s[3]);
            break;
        case CMPWI:
            rd = reg_number(s[1], 2);
            ra = reg_number(s[2], 0);
            rb = stoi(s[3]);
            break;
        case BGT: // 分岐系はra, rbに次の実行の行を入れ、rd = -1
            rd = reg_number(s[1], 2);
            assert(label.find(s[2]) != label.end());
            ra = label[s[2]];
            break;
        case BL:
            assert(label.find(s[1]) != label.end());
            rd = label[s[1]];
            break;
        case BLR: // 無条件分岐 to LR
            break;
        case LWZ:
            rd = reg_number(s[1], 0);
            ra = reg_number(s[2], 5);
            rb = reg_number(s[2], 6);
            break;
        case LMW:
            rd = reg_number(s[1], 0);
            ra = reg_number(s[2], 5);
            rb = reg_number(s[2], 6);
            break;
        case STW:
            rd = reg_number(s[1], 0);
            ra = reg_number(s[2], 5);
            rb = reg_number(s[2], 6);
            break;
        case STMW:
            rd = reg_number(s[1], 0);
            ra = reg_number(s[2], 5);
            rb = reg_number(s[2], 6);
            break;
        case STWU:
            rd = reg_number(s[1], 0);
            ra = reg_number(s[2], 5);
            rb = reg_number(s[2], 6);
            break;
        case MFLR: // move from LR
            rd = reg_number(s[1], 0);
            break;  
        case MR:
            rd = reg_number(s[1], 0);
            ra = reg_number(s[2], 0);
            break;
        case MTLR: // move to LR
            rd = reg_number(s[1], 0);
            break;
        default:
            std::cerr << "## WARNING ##\n" << s[0] << " is unknown opcode\n" << std::endl;
            assert(false);
            break;
    }
    mem.instr[mem.index++] = INSTR(opc, rd, ra, rb);
}

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

void put_instr_into_memory(std::string& str, MEMORY& mem, std::map<std::string, int>& label){
    std::vector<std::string> s = remove_chars(str, ", \t\n");
    for(int i = 0; i < (int)s.size(); i++){
        if(i == 0){
            if(s[i].back() == ':') continue;
            else{ // instrucion
                recognize_instr(mem, s, label);
            }
        }
    }
}

void decode(const std::string& file, MEMORY &mem, std::map<std::string, int>& label){
    std::ifstream ifs(file);

    if(!ifs){
        std::cerr << "cannot open file" << std::endl;
        std::exit(1);
    }

    std::string str;

    int cnt = 0;
    while(std::getline(ifs, str)){
        if(str[0] != '\t' && str[0] != '#') label[str] = cnt;
        else cnt++;
    }
    ifs.seekg(0);

    while(std::getline(ifs, str)) put_instr_into_memory(str, mem, label);
}