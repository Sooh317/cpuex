#include <iostream>
#include <string>
#include <map>
#include "struct.hpp"
#include "decode.hpp"
#include "util.hpp"


int main(int argc, char* argv[]){
    CPU cpu;
    MEMORY mem, submem; // submem for library
    std::map<std::string, int> lbl, sublbl;

    collect_label(argv[1], lbl);
    if(argc >= 3){
        collect_label(argv[2], sublbl);
        for(auto&& [_, line] : sublbl) line += mem.index;
    }
    decode(argv[1], mem, lbl, sublbl);
    if(argc >= 3) decode(argv[2], submem, sublbl, lbl);
    return 0;
}
