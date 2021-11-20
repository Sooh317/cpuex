#pragma once
#include "struct.hpp"
#include "option.hpp"
#include "memory.hpp"
#include "decode.hpp"
#include "util.hpp"
#include <map>
#include <fstream>
#include <string>

/*
void init_memory(MEMORY&, OPTION&);
void show_lable(const std::map<std::string, int>&);
*/

void init_memory(MEMORY& mem, OPTION& option){
    if(!option.binary){
        int tmp = 0;
        std::ifstream ifs("assembly_binary/assembly.txt");
        std::string s;
        while(ifs >> s) tmp = collect_label(s, mem.lbl, tmp);
        ifs.clear();
        ifs.seekg(0, std::ios_base::beg);
        while(ifs >> s) decode(s, mem);
    }
    else{
        std::ifstream ifs("binary.txt");
        std::string s;
        while(ifs >> s) mem.instr[mem.index++] = decode_bin(s);
    }
}

void show_lable(const std::map<std::string, int>& lbl){
    for(auto[str, line] : lbl){
        std::cout << str << " " << line << std::endl;
    }
}
