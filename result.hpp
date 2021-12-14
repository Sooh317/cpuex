#include <fstream>
#include "struct.hpp"
#include "util.hpp"

void show_result(const CPU& cpu){
    std::ofstream wf("flushed.txt");
    for(int i = 0; i < (int)cpu.flushed.size(); i++) wf << cpu.flushed[i];
    std::cout << "出力結果はflushed.txtを確認してください" << std::endl;
}