#pragma once
#include "struct.hpp"
#include "util.hpp"
#include <string>
#include <vector>

/*
enum DIRECTIVE_KIND directive_kind(const std::string&);
void process_ascii_directive(MEMORY&, const std::string&);
void process_long_directive(MEMORY&, const std::string&);
*/

enum DIRECTIVE_KIND directive_kind(const std::string &ss){
    if(ss == ".align") return ALIGN;
    else if(ss == ".ascii") return ASCII;
    else if(ss == ".long") return LONG;
    /*
    else if(ss == ".cstring") return CSTRING;
    else if(ss == ".global") return GLOBL;
    else if(ss == ".indirect_symbol") return INDIRECT_SYMBOL;
    else if(ss == ".lazy_symbol_pointer") return LAZY_SYMBOL_POINTER;
    else if(ss == ".literal8") return LITERAL8;
    else if(ss == ".non_lazy_symbol_pointer") return NON_LAZY_SYMBOL_POINTER;
    else if(ss == ".section") return SECTION;
    else if(ss == ".subsections_via_symbols") return SUBSECTIONS_VIA_SYMBOLS;
    */
    else if(ss[0] == '.') return SOME_DIRECTIVE;
    else return NOT_DIRECTIVE;
}

// まだ改善が必要(dyld_stub_binding_helper)
void process_long_directive(MEMORY& mem, const std::string& s){
    mem.instr[mem.index >> 2].opcode = NOT_INSTR;
    for(int i = 0; i < (int)s.size(); i++){
        if(s[i] == '-' || ('0' <= s[i] && s[i] <= '9')) continue;
        else return;
    }
    mem.data[mem.index >> 2] = stoi(s);
}

void process_ascii_directive(MEMORY& mem, const std::string& s){ // "...\0"の形
    assert(false);
    int index = mem.index;
    mem.instr[index].opcode = NOT_INSTR;
    for(int i = 1; i < (int)s.size(); i++){
        mem.data[mem.index >> 2] = ((uint8_t)s[i]) << (mem.index & bitmask(3));
        mem.index++;
    }
    mem.index = index;
}