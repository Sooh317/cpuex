#pragma once
#include <iostream>
#include <string>
#include <map>
#include "util.hpp"

struct option_t{
    bool display_binary;
    bool display_assembly;
    bool ALL;
    int exec_mode;
    bool binary;
    bool binTOasm;
    bool asmTObin;
    bool assembly;
    int label_addr;
    option_t():display_binary(0), display_assembly(0),ALL(0), exec_mode(0), binary(0), binTOasm(0), asmTObin(0), assembly(0), label_addr(0){}

    void show_option(){
        std::cerr << "### showing options ###\n";
        if(binTOasm){
            std::cerr << "translate binary to assembly" << std::endl;
            if(binary) std::cerr << " - disassemble binary in run/bin" << std::endl;
            return;
        }
        if(asmTObin){
            std::cerr << "translate assembly to binary" << std::endl;
            if(assembly) std::cerr << " - assemble files written in run/assembly.txt" << std::endl;
            return;
        }
        if(exec_mode == 0) std::cerr << "simulate whole" << std::endl;
        else if(exec_mode == 1) std::cerr << "step execution" << std::endl;
        if(display_assembly) std::cerr << "display instructions in assembly" << std::endl;
        if(display_binary) std::cerr << "display instructions in binary" << std::endl;
        if(binary) std::cerr << "reading binary" << std::endl;
        if(assembly) std::cerr << "### invalid option ###\nYou can use -a only if you use -tb" << std::endl;
        else std::cerr << "reading assembly" << std::endl;
        std::cerr << "### options end ###\n" << std::endl;
    }
};
using OPTION = option_t;

void init_option(OPTION& option, int argc, char* argv[]){
    for(int i = 0; i < argc; i++){
        if(argv[i][0] == '-'){
            if(argv[i][1] == 's'){
                option.exec_mode = 1;
                option.display_binary = option.display_assembly = 1;
            }
            else if(argv[i][1] == 'A'){
                option.ALL = 1;
                option.display_binary = option.display_assembly = 1;
            }
            else if(argv[i][1] == 'd'){
                option.display_assembly = option.display_binary = 1;
                if(argv[i][2] == 'a') option.display_binary = 0;
                else if(argv[i][2] == 'b') option.display_assembly = 0;
            }
            else if(argv[i][1] == 'b') option.binary = 1;
            else if(argv[i][1] == 't'){
                if(argv[i][2] == 'a') option.binTOasm = 1;
                else if(argv[i][2] == 'b') option.asmTObin = 1;
            }
            else if(argv[i][1] == 'a') option.assembly = 1;
        }
    }
}

void show_option(OPTION option){
    if(option.exec_mode == 0) std::cerr << "???????????????" << std::endl;
    else if(option.exec_mode == 1) std::cerr << "step??????" << std::endl;
}