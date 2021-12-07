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
    const int width = CACHE_LINE_SIZE / 32;
    int hit, miss, write_back;
    std::vector<state_t> state;
    std::vector<std::vector<DATA>> data;

    void sw(int32_t addr, MEMORY& mem, DATA d){
        int offset = addr & bitmask(CACHE_OFFSET_SIZE);
        int index = (addr >> CACHE_OFFSET_SIZE) & bitmask(CACHE_INDEX_SIZE);
        int tag = (addr >> (CACHE_INDEX_SIZE + CACHE_OFFSET_SIZE)) & bitmask(CACHE_TAG_SIZE);
        addr = addr & ((~0) ^ bitmask(CACHE_OFFSET_SIZE)); // 下のoffset size分だけ0にクリア
        if(state[index].tag == tag){
            ++hit;
            state[index].dirty = 1;
            data[index][(offset >> 2)] = d;
        }
        else{
            std::swap(tag, state[index].tag);
            if(state[index].dirty){
                write_back++;
                for(int i = 0; i < width; i++){
                    mem.data[(addr >> 2) + i] = data[index][i]; // line size により maskの長さが変わるので注意
                }
            }
            // 仕様による
            state[index].dirty = 1;
            for(int i = 0; i < width; i++){
                data[index][i] = mem.data[(addr >> 2) + i];
            }
            data[index][offset >> 2] = d;
        }
    }

public:
    cache_t():hit(0), miss(0), write_back(0){
        data.resize(CACHE_LINE_NUM, std::vector<DATA>(width));
        state.resize(CACHE_LINE_NUM);
    }
    // addr is a multiple of 4
    void lw(int32_t addr, MEMORY& mem){
        int index = (addr >> CACHE_OFFSET_SIZE) & bitmask(CACHE_INDEX_SIZE);
        int tag = (addr >> (CACHE_INDEX_SIZE + CACHE_OFFSET_SIZE)) & bitmask(CACHE_TAG_SIZE);
        addr = addr & ((~0) ^ bitmask(CACHE_OFFSET_SIZE)); // 下のoffset size分だけ0にクリア
        if(state[index].tag != tag){
            ++miss;
            state[index].tag = tag;
            for(int i = 0; i < width; i++){
                data[index][i] = mem.data[(addr >> 2) + i]; // line size により maskの長さが変わるので注意
            }
        }
        else ++hit;
    }
    void swf(int32_t addr, MEMORY& mem, float f){
        DATA d;
        d.f = f;
        sw(addr, mem, d);
    }
    void swi(int32_t addr, MEMORY& mem, int i){
        DATA d;
        d.i = i;
        sw(addr, mem, d);
    }
};
using CACHE = cache_t;