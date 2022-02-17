#include <fstream>
#include "struct.hpp"
#include "util.hpp"

#define FREQ 85
#define BAUDRATE 3000000

long long estimate(MEMORY_PRO* mem, CACHE_PRO* cache){
    long long total = std::accumulate(mem->opc_cnt.begin(), mem->opc_cnt.end(), 0ll);
    // branch
    total += std::accumulate(mem->opc_plus.begin(), mem->opc_plus.end(), 0ll);
    // fpu
    total += 2ll * mem->opc_cnt[FADD];
    total += 2ll * mem->opc_cnt[FSUB];
    total += 2ll * (mem->opc_cnt[FMUL] + mem->opc_cnt[FHALF]);
    total += 9ll * mem->opc_cnt[FDIV];
    total += 8ll * mem->opc_cnt[FSQRT];
    total += 11ll * (mem->opc_cnt[FSIN] + mem->opc_cnt[FCOS]);
    total += 7ll * mem->opc_cnt[FATAN];
    total += 3ll * mem->opc_cnt[FFLOOR];
    total += 2ll * mem->opc_cnt[FCFIW];
    // lw, sw
    total += 1ll * cache->lwhit;
    total += 0ll * cache->swhit;
    total += (long long)(50ll * (cache->lwmiss + cache->swmiss));
    // stall
    total += mem->stall;
    
    return total;
}

void show_result(const CPU& cpu, MEMORY_PRO* mem_pro, CACHE_PRO* cache_pro, const OPTION& option){

    std::ofstream wf("flushed.ppm");
    for(int i = 0; i < (int)cpu.flushed.size(); i++) wf << cpu.flushed[i];
    wf.close();

    if(option.exec_mode == 1){
        wf.open("statistics.txt");
        wf << "命令数: " << std::accumulate(mem_pro->opc_cnt.begin(), mem_pro->opc_cnt.end(), 0ull) << std::endl;
        wf << "内訳\n";
        for(int i = 0; i < INSTR_KIND::TOTAL; i++){
            wf << '\t' << opcode_to_string(INSTR_KIND(i)) << ": " << mem_pro->opc_cnt[i] << '\n';
        }
        wf << "キャッシュヒット(sw): " << cache_pro->swhit << std::endl;
        wf << "キャッシュヒット(lw): " << cache_pro->lwhit << std::endl;
        wf << "キャッシュミス(sw): " << cache_pro->swmiss << std::endl;
        wf << "キャッシュミス(lw): " << cache_pro->lwmiss << std::endl;
        wf << "ライトバック: " << cache_pro->write_back << std::endl;
        wf << "ヒット率: " << (double)(cache_pro->swhit + cache_pro->lwhit) * 100.0 / (double)((cache_pro->swmiss + cache_pro->lwmiss) + (cache_pro->swhit + cache_pro->lwhit)) << std::endl;
        wf << "ストール数:" << mem_pro->stall << std::endl;
        long long cycle = estimate(mem_pro, cache_pro);
        if(option.prediction) wf << "実行時間予測:"<< '\n';
        wf << "\tcycle数: " << cycle << '\n';
        wf << "\t予想秒数: " << (double)cycle / (FREQ * 1000000) + (12061.0 * 4 * 10 / BAUDRATE) << '\n';
        wf.close();
    }
    std::cout << "出力結果はflushed.ppmを確認してください" << std::endl;
    std::cout << "統計情報はstatistics.txtを確認してください" << std::endl;
}