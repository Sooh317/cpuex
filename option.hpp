#pragma once
#include <iostream>
#include <string>
#include <map>
#include "util.hpp"

struct option_t{
    bool display_binary;
    bool display_assembly;
    int exec_mode;
    bool jump_to_label;
    bool binary;
    bool binTOasm;
    bool asmTObin;
    bool assembly;
    int label_addr;
    option_t():display_binary(0), display_assembly(0),exec_mode(0), jump_to_label(false), binary(0), binTOasm(0), asmTObin(0), assembly(0), label_addr(0){}

    void label_ask(std::map<std::string, int> &mp){
        printerr("次にjumpしたいラベル名を入力してください");
        printerr("jumpしない場合はNと入力してください");
        std::string s;
        std::cout << "> " << std::flush; 
        std::cin >> s;
        if(s == "N"){
            jump_to_label = 0;
            return;
        }
        else{
            while(mp.find(s) == mp.end()){
                std::cerr << s << " は存在しないラベルです" << std::endl;
                printerr("ラベル名を入力してください");
                std::cout << "> " << std::flush;
                std::cin >> s;
            }
            label_addr = mp[s];
        }
    }
    void show_option(){
        std::cerr << "### showing options ###\n";
        if(binTOasm){
            std::cerr << "translate binary to assembly" << std::endl;
            if(binary) std::cerr << "reading binary.txt" << std::endl;
            return;
        }
        if(asmTObin){
            std::cerr << "translate assembly to binary" << std::endl;
            if(assembly) std::cerr << "reading assembly.s" << std::endl;
            return;
        }
        if(exec_mode == 0) std::cerr << "simulate whole" << std::endl;
        else if(exec_mode == 1) std::cerr << "step execution" << std::endl;
        if(jump_to_label) std::cerr << "break point(the address) is set here : " << label_addr << std::endl;
        if(display_assembly) std::cerr << "display instructions in assembly" << std::endl;
        if(display_binary) std::cerr << "display instructions in binary" << std::endl;
        if(binary) std::cerr << "reading binary" << std::endl;
        if(assembly) std::cerr << "### invalid option ###\nreading assembly.s" << std::endl;
        else std::cerr << "reading assembly" << std::endl;
        std::cerr << "### options end ###" << std::endl;
    }
};
using OPTION = option_t;

void init_option(OPTION&, int, char*[]);
void show_option(OPTION);