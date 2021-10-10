#pragma once
#include <stdint.h>
#include <iostream>

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
    GPR gpr[GPR_SIZE];
    FPR fpr[FPR_SIZE];
    unsigned int pc;

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
    uint8_t opcode;
    uint8_t rd; // rd or rs
    int32_t ra;
    int32_t rb;

    instr_t(uint8_t _opcode,uint8_t _rd,uint8_t _ra, int32_t _rb):
        opcode(_opcode), rd(_rd), ra(_ra), rb(_rb){}
    
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
    INSTR instr[INSTR_SIZE]; 
    int32_t data[DATA_SIZE]; 
};

using MEMORY = memory_t;