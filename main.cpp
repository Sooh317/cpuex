#include <iostream>
#include <iomanip>
#include <string>
#include <map>
#include "struct.hpp"
#include "decode.hpp"
#include "sim.hpp"
#include "memory.hpp"
#include "cpu.hpp"
#include "instruction.hpp"
#include "option.hpp"
#include "util.hpp"
#include "fpu.hpp"
#include "cache.hpp"
#include "result.hpp"

using namespace std;

int main(int argc, char* argv[]){
    std::cout << std::fixed << std::setprecision(20);
    CPU cpu;
    MEMORY_PRO mem_pro;
    CACHE_PRO cache_pro;
    OPTION option;
    FPU fpu;
    TasukuFukami::init_fpu(fpu);
    //fpu_test(fpu);

    // ifstream ifs("fadd2");
    // ofstream ofs("fadd2.txt");
    // string s, t;
    // bool ovf;
    // while(ifs >> s){
    //     float f = TasukuFukami::float_parse(s.substr(0, 32));
    //     float g = TasukuFukami::float_parse(s.substr(32, 32));
    //     float ans = TasukuFukami::fadd(f, g);
    //     u32 v = bit_cast<u32>(ans);
    //     for(int i = 31; i >= 0; i--){
    //         ofs << (v >> i & 1);
    //     }
    //     ofs << '\n';
    // }

    init_option(option, argc, argv);
    option.show_option();
    init_memory(cache_pro, mem_pro, option);

    if(option.binTOasm || option.asmTObin){
        translator(mem_pro, option);
        return 0;
    }

    init_cpu(cpu, option, mem_pro.lbl);

    execution(cpu, mem_pro, option, fpu, cache_pro);

    show_result(cpu, mem_pro, cache_pro);

    return 0;
}
