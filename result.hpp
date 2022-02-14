#include <fstream>
#include "struct.hpp"
#include "util.hpp"

void show_result(const CPU& cpu, MEMORY_PRO& mem, CACHE_PRO& cache){
    std::ofstream wf("flushed.ppm");
    for(int i = 0; i < (int)cpu.flushed.size(); i++) wf << cpu.flushed[i];
    wf.close();
    wf.open("statistics.txt");
    wf << "命令数: " << mem.cnt << std::endl;
    wf << "内訳\n";
    for(int i = 0; i < INSTR_KIND::TOTAL; i++){
        wf << "\t" << opcode_to_string((INSTR_KIND)i) << ": " << mem.opc_cnt[i] << '\n';
    } 
    wf << "キャッシュヒット: " << cache.hit << std::endl;
    wf << "キャッシュミス: " << cache.miss << std::endl;
    wf << "ライトバック: " << cache.write_back << std::endl;
    wf << "ヒット率: " << (double)cache.hit * 100.0 / (double)(cache.miss + cache.hit) << std::endl;
    wf.close();
    std::cout << "出力結果はflushed.ppmを確認してください" << std::endl;
    std::cout << "統計情報はstatistics.txtを確認してください" << std::endl;
}