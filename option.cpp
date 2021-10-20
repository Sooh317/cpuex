#include "option.hpp"

void init_option(OPTION& option, int argc, char* argv[], std::map<std::string, int>&mp){
    for(int i = 0; i < argc; i++){
        if(argv[i][0] == '-'){
            if(argv[i][1] == 's') option.exec_mode = 1;
            else if(argv[i][1] == 'j'){
                option.jump_to_label = 1;
                std::cerr << "ラベル名を入力してください" << std::endl;
                std::string s;
                while(true){
                    std::cin >> s;
                    if(mp.find(s) != mp.end()){
                        option.label_addr = mp[s];
                        return;
                    }
                    else{
                        std::cerr << "ラベル " << s << " は存在しません" << std::endl;
                    }
                }
            }
        }
    }
}

void show_option(OPTION option){
    if(option.exec_mode == 0){
        std::cerr << "一気に実行" << std::endl;
        if(option.jump_to_label == 1){
            std::cerr << "### warning ###\n" << "無駄な指定です" << std::endl;
        }
    }
    else if(option.exec_mode == 1){
        std::cerr << "step実行" << std::endl;
        if(option.jump_to_label) std::cerr << "次のラベルを指定してjumpする" << std::endl;
    }
}