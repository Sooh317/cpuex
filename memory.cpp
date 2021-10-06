#include "memory.hpp"
#include "struct.hpp"
#include "util.hpp"

void init_memory(MEMORY &memory){
    return;
}

void get_instructions(const std::string file){
    std::ifstream ifs(file);

    if(!ifs){
        std::cerr << "cannot open file" << std::endl;
        std::exit(1);
    }

    std::string instruction;
    while(std::getline(ifs, instruction)){

    }
    
}
