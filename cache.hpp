#pragma once
#include <vector>
#include "struct.hpp"
#include "util.hpp"


#define CACHE_TAG_SIZE 18
#define CACHE_LINE_NUM 16
#define CACHE_OFFSET_SIZE 5
#define CACHE_LINE_SIZE 256
#define CACHE_INDEX_SIZE 4

struct cache_t{
    struct state_t{
        bool dirty, accessed;
        int tag;
        state_t():dirty(0), accessed(0), tag(0){}
    };
private:
    const int k = CACHE_LINE_SIZE / 32;
    int hit, miss, write_back;
    std::vector<state_t> state;
    std::vector<std::vector<int>> data;
public:
    cache_t():hit(0), miss(0), write_back(0){
        data.resize(CACHE_LINE_NUM, std::vector<int>(k));
        state.resize(CACHE_LINE_NUM);
    }
    void find(bool lw, int32_t addr, MEMORY& mem, int d = 0){
        int offset = addr & MASK5;
        int index = (addr >> CACHE_OFFSET_SIZE) & MASK4;
        int tag = (addr >> (CACHE_INDEX_SIZE + CACHE_OFFSET_SIZE)) & MASK18;
        addr = addr & ((~0) ^ MASK5); // 下のoffset size分だけ0にクリア
        if(lw){
            if(state[index].tag != tag){
                ++miss;
                state[index].tag = tag;
                for(int i = 0; i < k; i++){
                    data[index][i] = mem.data[((addr >> 2) & MASK3) + i]; // line size により maskの長さが変わるので注意
                }
            }
            else ++hit;
        }
        else{
            if(state[index].tag == tag){
                ++hit;
                state[index].dirty = 1;
                data[index][(offset >> 2)] = d;
            }
            else{
                std::swap(tag, state[index].tag);
                if(state[index].dirty){
                    write_back++;
                    for(int i = 0; i < k; i++){
                        mem.data[((addr >> 2) & MASK3) + i] = data[index][i]; // line size により maskの長さが変わるので注意
                    }
                }
                // 仕様による
                state[index].dirty = 1;
                for(int i = 0; i < k; i++){
                    data[index][i] = mem.data[((addr >> 2) & MASK3) + i];
                }
                data[index][offset >> 2] = d;
            }
        }
    }
};
using CACHE = cache_t;