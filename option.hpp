#pragma once
#include <iostream>
#include <string>
#include <map>
#include "util.hpp"

struct option_t{
    int exec_mode;
    bool jump_to_label;
    int label_addr;
    bool display;
    option_t():display(0),exec_mode(0), jump_to_label(false){}

    void label_ask(std::map<std::string, int> &mp){
        printerr("次にjumpしたいラベル名を入力してください");
        printerr("jumpしない場合はNと入力してください");
        std::string s; 
        std::cin >> s;
        if(s == "N"){
            jump_to_label = 0;
            return;
        }
        else{
            while(mp.find(s) == mp.end()){
                std::cerr << s << " は存在しないラベルです" << std::endl;
                printerr("ラベル名を入力してください");
                std::cin >> s;
            }
            label_addr = mp[s];
        }
    }
    void show_option(){
        if(exec_mode == 0) std::cerr << "simulate whole" << std::endl;
        else if(exec_mode == 1) std::cerr << "step execution" << std::endl;
        if(jump_to_label) std::cerr << "break point(the address) is set here : " << label_addr << std::endl;
        if(display) std::cerr << "display instructions" << std::endl;
    }
};
using OPTION = option_t;

void init_option(OPTION&, int, char*[], std::map<std::string, int>&);
void show_option(OPTION);