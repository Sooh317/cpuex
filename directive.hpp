#pragma once
#include "struct.hpp"
#include "util.hpp"
#include "cache.hpp"
#include <string>
#include <vector>


enum DIRECTIVE_KIND directive_kind(const std::string &ss){
    if(ss == ".align") return ALIGN;
    else if(ss == ".long") return LONG;
    else if(ss[0] == '.') return SOME_DIRECTIVE;
    else return NOT_DIRECTIVE;
}

void process_long_directive(CACHE_PRO& cache_pro, MEMORY_PRO& mem, const std::string& s){
    mem.instr[mem.index >> 2].opcode = NOT_INSTR;
    for(int i = 0; i < (int)s.size(); i++){
        if(s[i] == '-' || ('0' <= s[i] && s[i] <= '9')) continue;
        else return;
    }
    mem.instr[mem.index >> 2].rd = stoi(s);
    cache_pro.swi(mem.index, mem, stoi(s));
}
