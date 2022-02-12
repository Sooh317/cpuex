#pragma once
#include <vector>
#include <set>
#include "struct.hpp"
#include "util.hpp"


// #define CACHE_TAG_SIZE 18
// #define CACHE_LINE_NUM 16
// #define CACHE_OFFSET_SIZE 5
// #define CACHE_LINE_SIZE 256
// #define CACHE_INDEX_SIZE 4

// 1行のサイズ(bit)
#define CACHE_LINE_SIZE 512
// offset -> lineのどこ？ -> log(512/8)
#define CACHE_OFFSET_SIZE 6
// キャッシュの何行目かを引く部分の長さ
#define CACHE_INDEX_SIZE 10
// キャッシュラインの数
#define CACHE_LINE_NUM (1<<CACHE_INDEX_SIZE)
// 27 - 12 - 6
#define CACHE_TAG_SIZE (27 - CACHE_INDEX_SIZE - CACHE_OFFSET_SIZE)

// sw -> キャッシュ上に書き込み、必要ならメモリにライトバック
// lw -> 読み込んだものを(DATA型)を返す

struct cache_t{
    struct state_t{
        bool dirty, accessed;
        int tag;
        state_t():dirty(0), accessed(0), tag(0){}
    };
    static const int width = CACHE_LINE_SIZE / 32;
    long long hit, miss, write_back;
    std::vector<state_t> state;
    std::vector<std::vector<DATA>> data;

    inline int calc_offset(int32_t addr){return addr & bitmask(CACHE_OFFSET_SIZE);}
    inline int calc_index(int32_t addr){return (addr >> CACHE_OFFSET_SIZE) & bitmask(CACHE_INDEX_SIZE);}
    inline int calc_tag(int32_t addr){return (addr >> (CACHE_INDEX_SIZE + CACHE_OFFSET_SIZE)) & bitmask(CACHE_TAG_SIZE);}
    inline int calc_base_addr(int32_t addr){return addr & ((~0) ^ bitmask(CACHE_OFFSET_SIZE));} // 下のoffset size分だけ0にクリア}
    inline int restore_base_addr(int tag, int index){return (tag << (CACHE_INDEX_SIZE + CACHE_OFFSET_SIZE)) | (index << CACHE_OFFSET_SIZE);}

private:
    void Write_Back(int tag, int index, MEMORY& mem){
        int old_addr = restore_base_addr(tag, index);
        write_back++;
        for(int i = 0; i < width; i++){
            mem.data[(old_addr >> 2) + i] = data[index][i];
        }
    }

public:
    cache_t():hit(0), miss(0), write_back(0){
        data.resize(CACHE_LINE_NUM, std::vector<DATA>(width));
        state.resize(CACHE_LINE_NUM);
    }

    void stw(int32_t addr, MEMORY& mem, DATA d){
        int offset = calc_offset(addr);
        int index = calc_index(addr);
        int tag = calc_tag(addr);
        addr = calc_base_addr(addr);
        if(state[index].tag == tag){ // hit
            ++hit;
            state[index].dirty = 1;
            data[index][(offset >> 2)] = d;
        }
        else{ // miss
            miss++;
            std::swap(tag, state[index].tag);
            if(state[index].dirty){
                Write_Back(tag, index, mem);
            }
            // 仕様による
            state[index].dirty = 1;
            for(int i = 0; i < width; i++){
                data[index][i] = mem.data[addr_to_index(addr) + i];
            }
            data[index][offset >> 2] = d;
        }
    }

    // addr is a multiple of 4
    DATA ld(int32_t addr, MEMORY& mem){
        int offset = calc_offset(addr);
        int index = calc_index(addr);
        int tag = calc_tag(addr);
        addr = calc_base_addr(addr);
        if(state[index].tag != tag){
            ++miss;
            std::swap(state[index].tag, tag);
            if(state[index].dirty){
                Write_Back(tag, index, mem);
                state[index].dirty = 0;
            }
            for(int i = 0; i < width; i++){
                data[index][i] = mem.data[addr_to_index(addr) + i]; // line size により maskの長さが変わるので注意
            }
        }
        else ++hit;

        return data[index][offset >> 2];
    }

    virtual ~cache_t() = default;
};
using CACHE = cache_t;

struct cache2_t : CACHE {
private:
    std::vector<int> line2addr;

    void internal_show(int i, int index){
        std::cout << i << ": (";
        std::cout << data[index][i] << ", ";
        std::cout << bit_cast<float, int>(data[index][i]) << ", ";
        print_binary_int1(data[index][i]);
        std::cout << ")" << std::endl;
    }

    void show(int32_t addr, bool on = true){
        int offset = calc_offset(addr);
        int index = calc_index(addr);
        int tag = calc_tag(addr);
        if(state[index].tag != tag){
            std::cout << "Addr: " << addr << " is not on Cache" << std::endl;
        }
        else{
            addr = calc_base_addr(addr);
            std::cout << "Cache line: " << index << ", Offset: " << (offset >> 2) << std::endl;
            for(int i = 0; i < width; i++){
                if(on && i == (offset >> 2)) std::cout << "\033[1;34m";
                internal_show(i, index);
                if(on && i == (offset >> 2)) std::cout << "\033[m";
            }
        }
    }
    
    inline void update(int32_t addr){
        int index = calc_index(addr);
        line2addr[index] = calc_base_addr(addr);
    }

public:
    cache2_t():line2addr(CACHE_LINE_NUM, -1){}
    
    void show_cache_line(int line){
        if(line >= CACHE_LINE_NUM){
            std::cout << "Invalid line : " << line << std::endl;
            return;
        }
        if(line2addr[line] == -1){
            std::cout << "Nothing on Cache line " << line << std::endl;
            return;
        }
        int addr = line2addr[line];
        std::cout << "Addr: " << addr << " ~ " << addr + width * 4 - 1 << std::endl;
        for(int i = 0; i < width; i++){
            std::cout << "\033[1;34m";
            internal_show(i, line);
            std::cout << "\033[m";
        }
    }

    void show_cache(const SHOW& ss){
        if(ss.m) for(int addr : ss.maddr) show(addr);
        else{
            for(auto[from, to] : ss.Maddr){
                std::cout << from << " ~ " << to << " のキャッシュ状況" << std::endl;
                
            }
        }

    }


    DATA lw(int32_t addr, MEMORY& mem){
        update(addr);
        return this->ld(addr, mem);
    }

    void sw(int32_t addr, MEMORY& mem, int32_t i){
        update(addr);
        this->stw(addr, mem, (DATA)i);
    }
};
using CACHE_PRO = cache2_t;