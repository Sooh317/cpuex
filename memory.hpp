#pragma once
#include "struct.hpp"
#include "option.hpp"
#include "memory.hpp"
#include "decode.hpp"
#include "util.hpp"
#include <map>
#include <fstream>
#include <string>

void init_memory(CACHE_PRO& cache_pro, MEMORY_PRO& mem_pro, OPTION& option){
    if(option.asmTObin || !option.binary){
        int tmp = 0;
        std::ifstream ifs("run/assembly.txt");
        std::ofstream ofs("run/asm");
        std::string s;
        while(ifs >> s){
            s = "run/" + s;
            tmp = collect_label(s, mem_pro, tmp);
        }
        ifs.clear();
        ifs.seekg(0, std::ios_base::beg);
        ofs.clear();
        ofs.seekp(0, std::ios_base::beg);
        while(ifs >> s){
            mem_pro.file.emplace_back(s);
            s = "run/" + s;
            decode(s, mem_pro, cache_pro, ofs);
        }
        std::cerr << "ラベル[_min_caml_start]のアドレスは " << mem_pro.lbl["_min_caml_start"] << " byte目です" << std::endl;
    }
    if(option.exec_mode == 1){
        std::cout << "loading success!" << std::endl;
        // show_lable(mem.lbl);
    }
    std::ifstream ifs("sld/contest");
    int sld; 
    int idx = 0;
    while(ifs >> sld) mem_pro.sld[idx++] = sld;
}

void show_lable(const std::map<std::string, int>& lbl){
    int mx = 0;
    for(auto[str, line] : lbl){
        std::cout << str << " " << line << std::endl;
        mx = std::max(mx, line);
    }
    std::cout << mx << std::endl;
}
