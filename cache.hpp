#pragma once
#include <vector>
#include "struct.hpp"
#include "util.hpp"


#define CACHE_TAG_SIZE 18
#define CACHE_LINE_NUM 16
#define CACHE_OFFSET_SIZE 5
#define CACHE_LINE_SIZE 256
#define CACHE_INDEX_SIZE 4

// sw -> キャッシュ上に書き込み、必要ならメモリにライトバック
// lw -> 読み込んだものを(DATA型)を返す

struct cache_t{
    struct state_t{
        bool dirty, accessed;
        int tag;
        state_t():dirty(0), accessed(0), tag(0){}
    };
    int width = CACHE_LINE_SIZE / 32;
    int hit, miss, write_back;
    std::vector<state_t> state;
    std::vector<std::vector<DATA>> data;

    
private:
    void Write_Back(int tag, int index, MEMORY& mem){
        int old_addr = (tag << (CACHE_INDEX_SIZE + CACHE_OFFSET_SIZE)) | (index << CACHE_OFFSET_SIZE);
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
    DATA lw(int32_t addr, MEMORY& mem){
        assert(addr % 4 == 0);
        int offset = addr & bitmask(CACHE_OFFSET_SIZE);
        int index = (addr >> CACHE_OFFSET_SIZE) & bitmask(CACHE_INDEX_SIZE);
        int tag = (addr >> (CACHE_INDEX_SIZE + CACHE_OFFSET_SIZE)) & bitmask(CACHE_TAG_SIZE);
        addr = addr & ((~0) ^ bitmask(CACHE_OFFSET_SIZE)); // 下のoffset size分だけ0にクリア
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
    virtual void swf(int32_t addr, MEMORY& mem, float f){
        DATA d = bit_cast<DATA, float>(f);
        mem.type[addr_to_index(addr)] = 1;
        sw(addr, mem, d);
    }

    virtual void swi(int32_t addr, MEMORY& mem, int i){
        DATA d = i;
        mem.type[addr_to_index(addr)] = 0;
        sw(addr, mem, d);
    }

    virtual ~cache_t() = default;
};
using CACHE = cache_t;

struct cache2_t : CACHE {
private:
    std::vector<int> line2addr;

    void show(int32_t addr, MEMORY& mem){
        int offset = addr & bitmask(CACHE_OFFSET_SIZE);
        int index = (addr >> CACHE_OFFSET_SIZE) & bitmask(CACHE_INDEX_SIZE);
        int tag = (addr >> (CACHE_INDEX_SIZE + CACHE_OFFSET_SIZE)) & bitmask(CACHE_TAG_SIZE);
        if(this->state[index].tag != tag){
            std::cout << "Addr: " << addr << " is not on Cache" << std::endl;
            return;
        }
        else{
            addr = addr & ((~0) ^ bitmask(CACHE_OFFSET_SIZE)); // 下のoffset size分だけ0にクリア
            std::cout << "Cache line: " << index << ", Offset: " << (offset >> 2) << std::endl;
            for(int i = 0; i < width; i++){
                if(i == (offset >> 2)) std::cout << "\033[1;34m";
                std::cout << i << ": ";
                if(mem.type[addr_to_index(addr) + i]) std::cout << bit_cast<float, int>(data[index][i]) << std::endl;
                else std::cout << data[index][i] << std::endl;
                if(i == (offset >> 2)) std::cout << "\033[m";
            }
        }
    }
    
    void update(int32_t addr){
        int index = (addr >> CACHE_OFFSET_SIZE) & bitmask(CACHE_INDEX_SIZE);
        addr = addr & ((~0) ^ bitmask(CACHE_OFFSET_SIZE));
        line2addr[index] = addr;
    }

public:
    cache2_t():line2addr(CACHE_LINE_NUM, -1){}
    void show_cache_line(int line, MEMORY& mem){
        if(line >= CACHE_LINE_NUM){
            std::cout << "Invalid line : " << line << std::endl;
            return;
        }
        if(line2addr[line] == -1){
            std::cout << "Nothing on Cache line " << line << std::endl;
            return;
        }
        int addr = line2addr[line];
        std::cout << "Addr: " << addr << " ~ " << addr + (this->width) * 4 - 1 << std::endl;
        for(int i = 0; i < width; i++){
            std::cout << i << ": ";
            if(mem.type[addr_to_index(addr) + i]) std::cout << bit_cast<float, int>(this->data[line][i]) << " ";
            else std::cout << this->data[line][i] << " ";
            print_binary_int1(this->data[line][i]);
            std::cout << std::endl;
        }
    }
    void show_cache(const SHOW& ss, MEMORY& mem){
        if(ss.m) for(int addr : ss.maddr) show(addr, mem);
    }

    void swf(int32_t addr, MEMORY& mem, float f){
        assert(addr % 4 == 0);
        DATA d = bit_cast<DATA, float>(f);
        mem.type[addr_to_index(addr)] = 1;
        update(addr);
        this->sw(addr, mem, d);
    }
    
    void swi(int32_t addr, MEMORY& mem, int i){
        assert(addr % 4 == 0);
        DATA d = i;
        mem.type[addr_to_index(addr)] = 0;
        update(addr);
        this->sw(addr, mem, d);
    }
};
using CACHE_PRO = cache2_t;