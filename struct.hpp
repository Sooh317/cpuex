#pragma once
#include <stdint.h>

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
};
using CPU = cpu_t;

struct instr_t{
    uint8_t op;
    uint8_t rd;
    uint8_t ra;
    uint8_t rb;
    uint8_t oe;
    uint8_t rc;
    
};
using INSTR = instr_t;

#define INSTR_SIZE 1048576
struct memory_t{
    INSTR instr[INSTR_SIZE];  
    
};
using MEMORY = memory_t;