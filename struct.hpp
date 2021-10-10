#pragma once
#include <stdint.h>
#include <iostream>
#include <vector>

using GPR = int32_t; // general purpose register
using FPR = float; // floating point register
using CR = uint32_t; // condition register
using LR = uint32_t; // link register
using CTR = uint32_t; // count register
#define GPR_SIZE 32
#define FPR_SIZE 32

struct cpu_t{
    CR cr;
    LR lr;
    CTR ctr;
    std::vector<GPR> gpr;
    std::vector<FPR> fpr;
    unsigned int pc;

    cpu_t():cr(0), lr(0), ctr(0), gpr(GPR_SIZE), fpr(FPR_SIZE){}

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
};
using CPU = cpu_t;

struct instr_t{
    uint32_t opcode;
    uint32_t rd; // rd or rs
    int32_t ra;
    int32_t rb;

    instr_t(uint8_t _opcode,uint8_t _rd,uint8_t _ra, int32_t _rb):opcode(_opcode), rd(_rd), ra(_ra), rb(_rb){}
    instr_t(){}
};
using INSTR = instr_t;

#define INSTR_SIZE 1024*1024
#define DATA_SIZE 1024*1024

enum INSTR_KIND{
    // arithmetic operation
    ADD, 
    ADDI,
    LI, // addi 0
    SUBI, 
    // logic operation

    // comparison
    CMPWI, 
    // branch
    BGT,
    BL,
    BLR, // jump to LINK Register
    // load
    LWZ,
    LMW, // load multiple word
    // store
    STW,
    STMW, // store multiple word
    STWU, // store word with update
    // link register
    MFLR, // move from link register
    // move
    MR,   // move register
    MTLR, // refer to p526 

    INSTR_UNKNOWN
};

struct memory_t{
    int index;
    std::vector<INSTR> instr; 
    std::vector<int32_t> data;

    memory_t():index(0), instr(INSTR_SIZE), data(DATA_SIZE){} 
};
using MEMORY = memory_t;
