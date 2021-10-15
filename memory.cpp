#include "memory.hpp"
#include "decode.hpp"


void init_memory(int argc, char *argv[], MEMORY& mem, MEMORY& submem, std::map<std::string, int>&lbl, std::map<std::string, int>& sublbl){
    int tmp = collect_label(argv[1], lbl);
    if(argc >= 3) collect_label(argv[2], sublbl);
    decode(argv[1], mem, lbl, sublbl);
    if(argc >= 3) decode(argv[2], submem, sublbl, lbl);
}