#pragma once
#include <stdint.h>
#include <iostream>
#include <vector>
#include <string>
#include <map>
#include <assert.h>
#include "util.hpp"


using GPR = int32_t; // general purpose register
using FPR = float; // floating point register
using CR = uint32_t; // condition register
using LR = uint32_t; // link register
using CTR = uint32_t; // count register
using XER = uint32_t; // xer register
#define GPR_SIZE 32
#define FPR_SIZE 32
#define RECV_BUFFER_SIZE 8
#define SEND_BUFFER_SIZE 16

struct cpu_t{
    CR cr;
    LR lr;
    CTR ctr;
    XER xer;
    unsigned int pc;
    int sbptr; // send buffer pointer
    std::vector<GPR> gpr;
    std::vector<FPR> fpr;
    std::vector<char> send_buf;

    cpu_t():cr(0), lr(0), ctr(0), xer(0),pc(0), sbptr(0), gpr(GPR_SIZE), fpr(FPR_SIZE), send_buf(SEND_BUFFER_SIZE){}

    void show_gpr(){
        std::cout << "\033[1;31m";
        for(int i = 0; i < GPR_SIZE; i++){
            std::cout << "gpr[" << i << "] = (" << gpr[i] << ", ";
            print_binary_int1(gpr[i]);
            std::cout << ")\n";
        }
        std::cout << "\033[m\n";
    }
    void show_fpr(){
        std::cout << "\033[1;32m";
        union {float f; int i;} d;
        for(int i = 0; i < FPR_SIZE; i++){
            d.f = fpr[i];
            std::cout << "fpr[" << i << "] = (" << fpr[i] << ", ";
            print_binary_int1(d.i);
            std::cout << ")\n";
        }
        std::cout << "\033[m\n";
    }
    void show_cr(){
        std::cout << "\033[1;33m";
        std::cout << "cr : ";
        print_binary_int1(cr);
        std::cout << "\033[m\n";
        std::cout << std::endl;

    }
    void show_lr(){
        std::cout << "\033[1;34m";
        std::cout << "lr : ";
        print_binary_int1(lr);
        std::cout << "\033[m\n";
        std::cout << std::endl;
    }
    void show_ctr(){
        std::cout << "\033[1;35m";
        std::cout << "ctr : ";
        print_binary_int1(ctr);
        std::cout << "\033[m\n";
        std::cout << std::endl;
    }

    void show_sendbuf(){
        for(int i = 0; i < SEND_BUFFER_SIZE; i++) std::cout << send_buf[i];
        std::cout << "\n" << std::endl;
    }
};
using CPU = cpu_t;

enum INSTR_KIND{
    // arithmetic operation
    ADD, 
    ADDI,
    ADDIS, 
    SUB,
    CMPWI, 
    BGT,
    BL,
    BLR, // jump to LINK Register
    BCTR,
    BCTRL,
    BCL,
    LWZ,
    LWZU,
    STW,
    STWU, // store word with update
    MFSPR, // move from link register
    MR,   // move register
    MTSPR, // refer to p526 
    // 1st architecture
    FCTIWZ,
    XORIS,
    B, 
    BLT, 
    BNE, 
    CMPW, 
    FABS, 
    FADD, 
    FCMPU,
    FCFIW, 
    FDIV, 
    FMR, 
    FMUL, 
    FNEG,
    FSUB,
    FSQRT, 
    FFLOOR,
    FHALF,
    FCOS,
    FSIN,
    FATAN,
    IN, 
    OUT, 
    ORI,
    FLUSH, 
    LFS,
    LFSX,  
    STFSX,
    LWZX, 
    MULLI,
    MULHWU,
    SLWI, 
    SRWI,
    STFS, 
    STWX, 
    HALT,
    // ゴミ
    NOT_INSTR,
    INSTR_UNKNOWN
};

enum INSTR_FORM{
    DAB,
    DAIMM,

};

struct instr_t{
    INSTR_KIND opcode;
    int32_t rd; // rd or rs
    int32_t ra;
    int32_t rb;
    instr_t(INSTR_KIND _opcode,int32_t _rd,int32_t _ra, int32_t _rb):opcode(_opcode), rd(_rd), ra(_ra), rb(_rb){}
    instr_t(){}

    void show(){
        std::cout << "opcode : " << opcode << "\n" << "rd : " << rd << "\n" << "ra : " << ra << "\n" <<  "rb : " << rb << std::endl;
    }
};
using INSTR = instr_t;

#define INSTR_SIZE 1024*1024
#define DATA_SIZE 1024*1024*32

// http://apfel.mathematik.uni-ulm.de/~lehn/sghpc_ws14/OSXAssembler.pdf
enum DIRECTIVE_KIND{
    ALIGN, 
    ASCII,
    LONG, 
/*
    CSTRING, 
    GLOBL,
    INDIRECT_SYMBOL,
    LAZY_SYMBOL_POINTER,
    LITERAL8,
    NON_LAZY_SYMBOL_POINTER,
    SECTION,
    SUBSECTIONS_VIA_SYMBOLS,
    TEXT,
*/
    SOME_DIRECTIVE,
    NOT_DIRECTIVE
};


struct show_t{
    bool S, gr, fr, lr, cr, ctr, m, M, cache;
    bool next;
    int wid;
    int Sval;
    std::vector<int> maddr;
    std::vector<std::pair<int, int>> Maddr;
    std::vector<int> index;
    show_t():S(0), gr(0), fr(0), lr(0), cr(0), ctr(0), m(0), M(0), cache(0),next(1), wid(3), Sval(0){}
};
using SHOW = show_t;

union data_t{
    int i;
    float f;
};
using DATA = data_t;

struct memory_t{
    int index;
    std::vector<INSTR> instr; 
    std::vector<DATA> data;
    std::vector<bool> type; // type = 1 : float
    std::map<std::string, int> lbl;

    memory_t():index(0), instr(INSTR_SIZE), data(DATA_SIZE), type(DATA_SIZE){} 

    void show_memory(const SHOW& show){
        if(show.m){
            for(int ad : show.maddr){
                ad = ((ad >> 2) << 2);
                std::cout << "around " << ad << std::endl;
                for(int j = std::max(-(ad >> 2), -show.wid); j <= std::min(DATA_SIZE - 1 - (ad >> 2), show.wid); j++){
                    if(j == 0) std::cout << "\033[1;34m";
                    std::cout << "mem[" << ad + 4*j << "~" << ad + 4*j + 3 << "] = (" << (type[(ad >> 2) + j] ? data[(ad >> 2) + j].f : data[(ad >> 2) + j].i) << ", 0b'";
                    for(int i = 31; i >= 0; i--){
                        std::cout << (data[(ad >> 2) + j].i >> i & 1);
                        if(i % 8 == 0 && i) std::cout << " ";
                    }
                    std::cout << ")" << std::endl;
                    if(j == 0) std::cout << "\033[m";
                }
                std::cout << std::endl;
            }
        }
        else{ // show.M = 1
            for(auto[l, r] : show.Maddr){
                if(!(l < DATA_SIZE && r < DATA_SIZE && 0 <= l && 0 <= r)){
                    std::cout << "invalid range : [l, r] = " << "[" << l << ", " << r << "]" << std::endl;
                    continue;
                }
                std::cout << "from " << l << " to " << r << std::endl;
                std::cout << "\033[1;34m";
                for(int j = l; j <= r; j += 4){
                    std::cout << "mem[" << j << "~" << j + 3 << "] = (" << (type[j >> 2] ? data[j >> 2].f : data[j >> 2].i) << ", 0b'";
                    for(int i = 31; i >= 0; i--){
                        std::cout << (data[j >> 2].i >> i & 1);
                        if(i % 8 == 0 && i) std::cout << " ";
                    }
                    std::cout << ")" << std::endl;
                }
                std::cout << "\033[m" << std::endl;
            }
        }
    }
};
using MEMORY = memory_t;


