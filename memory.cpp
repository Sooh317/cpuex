#include "memory.hpp"
#include "decode.hpp"
#include "util.hpp"


void init_memory(MEMORY& mem){
    int cnt, tmp = 0;
    std::ifstream ifs("assembly.txt");
    std::string s; ifs >> s;
    cnt = stoi(s);
    for(int i = 0; i < cnt; i++){
        ifs >> s;
        tmp = collect_label(s, mem.lbl, tmp);
    }
    ifs.seekg(0, std::ios_base::beg);
    ifs >> s;
    for(int i = 0; i < cnt; i++){
        ifs >> s;
        decode(s, mem);
    }
}

void show_lable(const std::map<std::string, int>& lbl){
    for(auto[str, line] : lbl){
        std::cerr << str << " " << line << std::endl;
    }
}