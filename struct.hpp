#pragma once
#include <stdint.h>
#include <iostream>
#include <vector>

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
    std::vector<GPR> gpr;
    std::vector<FPR> fpr;
    unsigned int pc;

    cpu_t():cr(0), lr(0), ctr(0), xer(0),pc(0), gpr(GPR_SIZE), fpr(FPR_SIZE){}

    void show_gpr(){
        for(int i = 0; i < GPR_SIZE; i++){
            std::cerr << "gpr[" << i << "] = " << gpr[i] << '\n';
        }
    }
    void show_fpr(){
        for(int i = 0; i < FPR_SIZE; i++){
            std::cerr << "fpr[" << i << "] = " << fpr[i] << '\n';
        }
    }
    void show_cr(){
        std::cerr << "cr : ";
        for(int i = 31; i >= 0; i--){
            std::cerr << (cr >> i & 1);
        }
        std::cerr << std::endl;
    }
    void show_lr(){
        /*std::cerr << "lr : ";
        for(int i = 31; i >= 0; i--){
            std::cerr << (lr >> i & 1);
        }
        std::cerr << std::endl;*/
        std::cout << "lr : ";
        for(int i = 31; i >= 0; i--){
            std::cout << (lr >> i & 1);
        }
        std::cout << std::endl;
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
    BCL,
    BCTR,
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
    NOT_INSTR,
    INSTR_UNKNOWN
};

struct instr_t{
    INSTR_KIND opcode;
    int32_t rd; // rd or rs
    int32_t ra;
    int32_t rb;
    instr_t(INSTR_KIND _opcode,uint32_t _rd,int32_t _ra, int32_t _rb):opcode(_opcode), rd(_rd), ra(_ra), rb(_rb){}
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

struct memory_t{
    int index;
    std::vector<INSTR> instr; 
    std::vector<int32_t> data;

    memory_t():index(0), instr(INSTR_SIZE), data(DATA_SIZE){} 
};
using MEMORY = memory_t;
