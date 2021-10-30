#pragma once
#include <struct.hpp>
#include <util.hpp>
#include <vector>


#define CACHE_TAG_SIZE 18
#define CACHE_LINE_NUM 16
#define CACHE_OFFSET_SIZE 5
#define CACHE_LINE_SIZE 256
#define CACHE_INDEX_SIZE 4

struct cache_t{
    struct state_t{
        bool valid, dirty, accessed;
        int tag;
        state_t():valid(0), dirty(0), accessed(0), tag(0){}
    };
private:
    const int k = CACHE_LINE_SIZE / 32;
    int hit, miss;
    std::vector<state_t> state;
    std::vector<std::vector<int>> data;
public:
    cache_t():hit(0), miss(0){
        data.resize(CACHE_LINE_NUM, std::vector<INSTR>(k));
        state.resize(CACHE_LINE_NUM);
    }
    void find(bool lw, int32_t addr, const MEMORY& mem){
        int offset = addr & MASK5;
        int base = offset >> 2;
        int index = (addr >> CACHE_OFFSET_SIZE) & MASK4;
        int tag = (addr >> (CACHE_INDEX_SIZE + CACHE_OFFSET_SIZE)) & MASK18;
        addr = addr & ((~0) ^ MASK5); // 下のoffset size分だけ0にクリア
        if(lw){
            if(!state[index].valid || state[index].tag != tag){
                ++miss;
                state[index].valid = 1;
                state[index].tag = tag;
                for(int i = 0; i < k; i++){
                    data[base + i] = mem.data[(addr >> 2) + i];
                }
            }
            else ++hit;
        }
    }
};
using CACHE = cache_t;