#pragma once
#include "struct.hpp"
#include "option.hpp"
#include "memory.hpp"
#include "decode.hpp"
#include "util.hpp"
#include <map>
#include <fstream>
#include <string>

void process_files(){
    std::ifstream ifs("run/assembly.txt");
    std::string s;
    std::ofstream ofdat("run/data");
    std::ofstream oftxt("run/text");
    while(ifs >> s){
        s = "run/" + s;
        std::ifstream ifs(s);
        if(!ifs){
            std::cerr << "cannot open " << s << std::endl;
            std::exit(1);
        }

        bool text = 1;
        std::string t;

        while(std::getline(ifs, t)){
            if(t.size() == 0 || t[0] == '#') continue;
            auto it = remove_chars(t, " \t");
            if(it.size() == 0) continue;
            if(it[0] == ".text") text = 1;
            else if(it[0] == ".data") text = 0;
            if(text) oftxt << t << std::endl;
            else ofdat << t << std::endl;
        }
    }
}   

void init_memory(FASTCACHE* cache, FASTMEMORY* mem ,CACHE_PRO* cache_pro, MEMORY_PRO* mem_pro, OPTION& option){
    if(option.asmTObin || !option.binary){
        process_files();
        int tmp = 0;
        tmp = collect_label("run/text", mem, mem_pro, tmp, option);
        tmp = collect_label("run/data", mem, mem_pro, tmp, option);

        std::ofstream ofs("run/asm");
        ofs.clear();
        ofs.seekp(0, std::ios_base::beg);
        
        decode("run/text", cache, mem, mem_pro, cache_pro, ofs, option);
        decode("run/data", cache, mem, mem_pro, cache_pro, ofs, option);
        
        std::cerr << "ラベル[_min_caml_start]のアドレスは " << (option.exec_mode == 1 ? mem_pro->lbl["_min_caml_start"] : mem->lbl["_min_caml_start"]) << " byte目です" << std::endl;
    }

    std::ifstream ifs("sld/contest");
    int sld; 
    int idx = 0;
    while(ifs >> sld){
        if(option.exec_mode == 1) mem_pro->sld[idx++] = sld;
        else mem->sld[idx++] = sld;
    }

    if(option.exec_mode == 1){
        std::cout << "loading success!" << std::endl;
        // show_lable(mem.lbl);
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