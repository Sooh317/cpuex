#include "memory.hpp"
#include "decode.hpp"
#include "util.hpp"


void init_memory(MEMORY& mem, OPTION& option){
    if(!option.binary){
        int cnt, tmp = 0;
        std::ifstream ifs("assembly.txt");
        std::string s;
        while(ifs >> s) tmp = collect_label(s, mem.lbl, tmp);
        ifs.clear();
        ifs.seekg(0, std::ios_base::beg);
        while(ifs >> s) decode(s, mem);
    }
    else{
        std::ifstream ifs("binary.txt");
        std::string s;
        while(ifs >> s) decode_bin(s, mem);
    }
}

void show_lable(const std::map<std::string, int>& lbl){
    for(auto[str, line] : lbl){
        std::cerr << str << " " << line << std::endl;
    }
}

