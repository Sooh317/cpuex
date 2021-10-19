#include "memory.hpp"
#include "decode.hpp"
#include "util.hpp"


void init_memory(int argc, char *argv[], MEMORY& mem, std::map<std::string, int>&lbl){
    int tmp = 0;
    if(argc >= 3) tmp = collect_label(argv[2], lbl, tmp);
    collect_label(argv[1], lbl, tmp);
    if(argc >= 3) decode(argv[2], mem, lbl);
    decode(argv[1], mem, lbl);
}

void show_lable(const std::map<std::string, int>& lbl){
    for(auto[str, line] : lbl){
        std::cerr << str << " " << line << std::endl;
    }
}