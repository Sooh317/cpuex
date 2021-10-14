#include "decode.hpp"
#include "struct.hpp"
#include "directive.hpp"
#include "instruction.hpp"
#include "util.hpp"

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
    DIRECTIVE_KIND kind = directive_kind(s[0]);
    if(kind == NOT_DIRECTIVE || kind == LONG) cnt += 1 << 2;
    else if(kind == ALIGN){
        assert(s.size() >= 2);
        int k = 1 << stoi(s[1]);
        cnt += k - cnt % k;
    }
    else if(kind == ASCII){ // need to remove " \ ", which is 3 chars
        assert(s.size() >= 2);
        cnt += s[1].size() - 3;
    }
}

void put_instr_into_memory(std::string& str, MEMORY& mem, std::map<std::string, int>& label, std::map<std::string, int>& sublbl){
    std::vector<std::string> s = remove_chars(str, ", \t\n");
    if(s.size() >= 1){
        if(s[0].back() == ':') return; // label
        DIRECTIVE_KIND kind = directive_kind(s[0]);
        if(kind == LONG) process_long_directive(mem, s[1]);
        else if(kind == ASCII) process_ascii_directive(mem, s[1]);
        else if(kind == SOME_DIRECTIVE || kind == ALIGN) return;
        recognize_instr(mem, s, label, sublbl);
        next_memory_address(mem.index, s);
    }
}

void decode(const char* file, MEMORY &mem, std::map<std::string, int>& label, std::map<std::string, int>& sublbl){
    std::ifstream ifs(file);

    if(!ifs){
        std::cerr << "cannot open file" << std::endl;
        std::exit(1);
    }

    std::string str;
    while(std::getline(ifs, str)){
        print(str);
        int k = mem.index >> 2;
        std::cerr << "k : " << k << std::endl;
        put_instr_into_memory(str, mem, label, sublbl);
        mem.instr[k].show();
    }
}

void collect_label(const char* file, std::map<std::string, int>& label){
    std::ifstream ifs(file);
    if(!ifs){
        std::cerr << "cannot open file" << std::endl;
        std::exit(1);
    }
    int cnt = 0;
    std::string str;
    while(std::getline(ifs, str)){
        if(str[0] == '#') continue; // comment
        else if(str[0] != '\t'){ // label
            str = remove_chars(str, " \t:")[0];
            label[str] = cnt;
        }
        else{
            auto ss = remove_chars(str, ", \t\n");
            next_memory_address(cnt, ss);
        }
    }
}
