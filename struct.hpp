#pragma once
#include <stdint.h>
#include <iostream>
#include <vector>
#include <string>
#include <map>
#include <assert.h>


using GPR = int32_t; // general purpose register
using FPR = float; // floating point register
using CR = uint32_t; // condition register
using LR = uint32_t; // link register
using CTR = uint32_t; // count register
using XER = uint32_t; // xer register
#define GPR_SIZE 32
#define FPR_SIZE 32

struct cpu_t{
    CR cr;
    LR lr;
    CTR ctr;
    XER xer;
    unsigned int pc;
    std::vector<GPR> gpr;
    std::vector<FPR> fpr;

    cpu_t():cr(0), lr(0), ctr(0), xer(0),pc(0), gpr(GPR_SIZE), fpr(FPR_SIZE){}

    void show_gpr(){
        std::cerr << "\033[1;31m";
        for(int i = 0; i < GPR_SIZE; i++){
            std::cerr << "gpr[" << i << "] = " << gpr[i] << std::endl;
        }
        std::cerr << "\033[m\n";
    }
    void show_fpr(){
        std::cerr << "\033[1;32m";
        for(int i = 0; i < FPR_SIZE; i++){
            std::cerr << "fpr[" << i << "] = " << fpr[i] << '\n';
        }
        std::cerr << "\033[m\n";
    }
    void show_cr(){
        std::cerr << "\033[1;33m";
        std::cerr << "cr : ";
        for(int i = 31; i >= 0; i--){
            if(i % 8 == 7) std::cerr << " ";
            std::cerr << (cr >> i & 1);
        }
        std::cerr << "\033[m\n";
        std::cerr << std::endl;

    }
    void show_lr(){
        /*std::cerr << "lr : ";
        for(int i = 31; i >= 0; i--){
            std::cerr << (lr >> i & 1);
        }
        std::cerr << std::endl;*/
        std::cerr << "\033[1;34m";
        std::cerr << "lr : ";
        for(int i = 31; i >= 0; i--){
            if(i % 8 == 7) std::cerr << " ";
            std::cerr << (lr >> i & 1);
        }
        std::cerr << "\033[m\n";
        std::cerr << std::endl;
    }
    void show_ctr(){
        std::cerr << "\033[1;35m";
        std::cerr << "ctr : ";
        for(int i = 31; i >= 0; i--){
            if(i % 8 == 7) std::cerr << " ";
            std::cerr << (ctr >> i & 1);
        }
        std::cerr << "\033[m\n";
        std::cerr << std::endl;
    }
};
using CPU = cpu_t;

enum INSTR_KIND{
    // arithmetic operation
    ADD, 
    ADDI,
    ADDIS, 
    /*LI, // addi 0 */
    /*SUBI, */

    // logic operation

    // comparison
    CMPWI, 
    // branch
    BGT,
    BL,
    BLR, // jump to LINK Register
    BCTR,
    BCL,
    // load
    LWZ,
    LWZU,
    /* LMW, // load multiple word */
    // store
    STW,
    /* STMW, // store multiple word */
    STWU, // store word with update
    // link register
    MFSPR, // move from link register
    // move
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
    FDIV, 
    FMR, 
    FMUL, 
    FNEG,
    FSUB, 
    LFD,  
    LWZX, 
    MULLI,
    MULHWU,
    SLWI, 
    SRWI,
    STFD, 
    STWX, 

    // ゴミ
    NOT_INSTR,
    INSTR_UNKNOWN
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
#define DATA_SIZE 1024*1024

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
    bool gr, fr, lr, cr, ctr, m, M;
    bool next;
    int wid;
    std::vector<int> addr;
    show_t():gr(0), fr(0), lr(0), cr(0), ctr(0), m(0), M(0),next(1), wid(3){}
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
        std::cerr << "\033[1m";
        if(show.m){
            for(int ad : show.addr){
                ad = ((ad >> 2) << 2);
                std::cerr << "around " << ad << std::endl;
                for(int j = std::max(-(ad >> 2), -show.wid); j <= std::min(DATA_SIZE - 1 - (ad >> 2), show.wid); j++){
                    std::cerr << "mem[" << ad + 4*j << "~" << ad + 4*j + 3 << "] = " << (type[(ad >> 2) + j] ? data[(ad >> 2) + j].f : data[(ad >> 2) + j].i) << "  0b'";
                    for(int i = 31; i >= 0; i--){
                        std::cerr << (data[(ad >> 2) + j].i >> i & 1);
                        if(i % 8 == 0) std::cerr << " ";
                    }
                    std::cerr << std::endl;
                }
                std::cerr << std::endl;
            }
        }
        else{ // show.M = 1
            for(int i = 0; i < (int)show.addr.size(); i += 2){
                assert(show.addr[i] < DATA_SIZE && show.addr[i + 1] < DATA_SIZE && show.addr[i] >= 0 && show.addr[i + 1] >= 0);
                std::cerr << "from " << show.addr[i] << " to " << show.addr[i + 1] << std::endl;
                for(int j = show.addr[i]; j <= show.addr[i + 1]; j += 4){
                    std::cerr << "mem[" << j << "~" << j + 3 << "] = " << (type[j >> 2] ? data[j >> 2].f : data[j >> 2].i) << "  0b'";
                    for(int i = 31; i >= 0; i--){
                        std::cerr << (data[j >> 2].i >> i & 1);
                        if(i % 8 == 0) std::cerr << " ";
                    }
                    std::cerr << std::endl;
                }
                std::cerr << "\n";
            }
        }
        std::cerr << "\033[m";
    }
};
using MEMORY = memory_t;


