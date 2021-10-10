#include <iostream>
#include <string>
#include <map>
#include "struct.h"
#include "memory.hpp"
#include "decode.hpp"
#include "util.hpp"

int main(int argc, char* argv[]){
    CPU cpu;
    MEMORY mem;
    std::map<std::string, int> label;

    decode(argv[1], mem, label);
    return 0;
}
