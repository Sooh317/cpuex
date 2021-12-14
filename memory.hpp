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
    if(option.asmTObin){
        collect_label("assembly_binary/assembly.s", mem, 0);
        decode("assembly_binary/assembly.s", mem);
    }
    else if(!option.binary){
        int tmp = 0;
        std::ifstream ifs("run/assembly.txt");
        std::string s;
        while(ifs >> s){
            s = "run/" + s;
            tmp = collect_label(s, mem, tmp);
        }
        ifs.clear();
        ifs.seekg(0, std::ios_base::beg);
        while(ifs >> s){
            s = "run/" + s;
            decode(s, mem);
        }
    }
    else{
        std::ifstream ifs("run/binary.txt");
        std::string s;
        while(ifs >> s) mem.instr[mem.index++] = decode_bin(s);
    }
}

void show_lable(const std::map<std::string, int>& lbl){
    int mx = 0;
    for(auto[str, line] : lbl){
        std::cout << str << " " << line << std::endl;
        mx = std::max(mx, line);
    }
    std::cout << mx << std::endl;
}
