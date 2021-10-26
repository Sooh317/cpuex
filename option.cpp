#include "option.hpp"

void init_option(OPTION& option, int argc, char* argv[]){
    for(int i = 0; i < argc; i++){
        if(argv[i][0] == '-'){
            if(argv[i][1] == 's'){
                option.exec_mode = 1;
                option.display_binary = option.display_assembly = 1;
            }
            else if(argv[i][1] == 'j') option.jump_to_label = 1;
            else if(argv[i][1] == 'd'){
                option.display_assembly = option.display_binary = 1;
                if(argv[i][2] == 'a') option.display_binary = 0;
                else if(argv[i][2] == 'b') option.display_assembly = 0;
            }
            else if(argv[i][1] == 'b') option.binary = 1;
            else if(argv[i][1] == 't'){
                if(argv[i][2] == 'b') option.binTOasm = 1;
                else if(argv[i][2] == 'a') option.asmTObin = 1;
            }
            else if(argv[i][1] == 'a') option.assembly = 1;
        }
    }
    if(option.exec_mode == 0 && (option.display_binary || option.display_assembly)){
        std::cerr << "ファイルに出力しない場合、大量の命令列がターミナルに吐かれる恐れがあります" << std::endl;
        std::cerr << "displayを行いますか? Y/N" << std::endl;
        char c; std::cin >> c;
        if(c == 'n' || c == 'N') option.display_binary = option.display_assembly = 0;
        else if(c != 'y' || c != 'n') return;
        else assert(false);
    }
}

void show_option(OPTION option){
    if(option.exec_mode == 0){
        std::cerr << "一気に実行" << std::endl;
        if(option.jump_to_label == 1){
            std::cerr << "### warning ###\n" << "-jは無駄な指定です" << std::endl;
        }
    }
    else if(option.exec_mode == 1){
        std::cerr << "step実行" << std::endl;
        if(option.jump_to_label) std::cerr << "次のラベルを指定してjumpする" << std::endl;
    }
}