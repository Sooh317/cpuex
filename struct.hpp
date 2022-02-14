#pragma once
#include <stdint.h>
#include <iostream>
#include <vector>
#include <string>
#include <map>
#include <unordered_map>
#include <assert.h>
#include "util.hpp"


// using CR = uint32_t; // condition register

using LR = uint32_t; // link register
using CTR = uint32_t; // count register
using XER = uint32_t; // xer register
#define GPR_SIZE 64
#define RECV_BUFFER_SIZE 8
#define SEND_BUFFER_SIZE 16

union gpr_t{
    int i; float f;
};

using GPR = gpr_t;

struct cpu_t{
    uint32_t cr;
    LR lr;
    CTR ctr;
    unsigned int pc;
    int sbptr; // send buffer pointer
    std::vector<GPR> gpr;
    std::vector<int8_t> send_buf;
    std::vector<int8_t> flushed;

    cpu_t():cr(0), lr(0), ctr(0),pc(0), sbptr(0), send_buf(SEND_BUFFER_SIZE, '\0'){
        gpr.resize(64);
        for(int i = 0; i < 64; i++) gpr[i].i = 0;
        flushed.reserve(1024 * 1024);
    }

    void show_gpr(bool col = true){
        if(col) std::cout << "\033[1;31m";
        for(int i = GPR_SIZE - 1; i >= 0; i--){
            std::cout << "gpr[" << i << "] = (" << gpr[i].i << ", ";
            print_binary_int1(gpr[i].i);
            std::cout << ")\n";
        }
        if(col) std::cout << "\033[m\n";
    }
    void show_fpr(bool col = true){
        if(col) std::cout << "\033[1;32m";
        for(int i = GPR_SIZE - 1; i >= 0; i--){
            int d = bit_cast<int, float>(gpr[i].f);
            std::cout << "fpr[" << i << "] = (" << gpr[i].f << ", ";
            print_binary_int1(d);
            std::cout << ")\n";
        }
        if(col) std::cout << "\033[m\n";
    }
    void show_cr(bool col = true){
        if(col) std::cout << "\033[1;33m";
        std::cout << "cr : ";
        print_binary_int1(cr);
        if(col) std::cout << "\033[m\n";
        std::cout << '\n';

    }
    void show_lr(bool col = true){
        if(col) std::cout << "\033[1;34m";
        std::cout << "lr : ";
        print_binary_int1(lr);
        if(col) std::cout << "\033[m\n";
        std::cout << '\n';
    }
    void show_ctr(bool col = true){
        if(col) std::cout << "\033[1;35m";
        std::cout << "ctr : ";
        print_binary_int1(ctr);
        if(col) std::cout << "\033[m\n";
        std::cout << '\n';
    }

    void flush(){
        for(int i = 0; i < sbptr; i++) flushed.push_back(send_buf[i]);
        sbptr = 0;
        return;
    }

    void write(int8_t c){
        send_buf[sbptr++] = c;
        if(sbptr == SEND_BUFFER_SIZE){
            for(int i = 0; i < SEND_BUFFER_SIZE; i++) flushed.push_back(send_buf[i]);
            sbptr = 0;
        }
    }

    void show_sendbuf(){
        std::cout << "pointer: " << sbptr << std::endl;
        for(int i = 0; i < SEND_BUFFER_SIZE; i++) std::cout << (int8_t)send_buf[i];
        std::cout << "\n" << std::endl;
    }
};
using CPU = cpu_t;

enum INSTR_KIND{
    IN, 
    OUT, 

    FLUSH,
    HALT,

    ADD, 
    ADDI,
    ADDIS, 
    SUB,
    SLWI, 
    SRWI,
    MUL16,
    MUL16I,
    ORI,

    CMP, 
    CMPI,
    FCMP,

    B, 
    BL,
    BEQ, 
    BLE, 
    BGE,
    BLR, // jump to LINK Register

    LW,
    LWX, 
    SW,
    SWX, 
    LWI,
    LLI,
    
    MFLR, // move from link register
    MV,   // move register
    MTLR, // refer to p526 

    FADD, 
    FSUB,
    FMUL, 
    FDIV, 
    FABS, 
    FNEG,
    FSQRT, 
    FFLOOR,
    FHALF,
    FSIN,
    FCOS,
    FATAN,
    FADDMUL,
    FTOI, // FTOI
    ITOF, //ITOF

    // ゴミ
    NOT_INSTR,
    INSTR_UNKNOWN,
    TOTAL
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

#define INSTR_SIZE 1024*1024/32
#define DATA_SIZE 1024*1024

// http://apfel.mathematik.uni-ulm.de/~lehn/sghpc_ws14/OSXAssembler.pdf
enum DIRECTIVE_KIND{
    ALIGN, 
    ASCII,
    SIZE, 
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
    bool S, gr, fr, lr, cr, ctr, m, M, cache, F, B, label, Point, help, Notify, bad, done;
    bool next;
    int wid;
    long long Sval;
    int laddr;
    std::pair<std::string, int> bpoint;
    std::vector<int> maddr;
    std::vector<int> nval;
    std::vector<std::pair<int, int>> Maddr;
    std::vector<int> index;
    show_t():S(0), gr(0), fr(0), lr(0), cr(0), ctr(0), m(0), M(0), cache(0),F(0), B(0), label(0), Point(0), help(0), Notify(0), bad(0), done(0), next(1), wid(3), Sval(0), bpoint("", 0){}
};
using SHOW = show_t;

enum INSTR_FORM{
    R,
    RR, 
    RRR, 
    RRRR,
    RIR,
    RI,
    RRI, 
    L, 
    N,
    RL, 
    NOT, // not instruction
};

using DATA = int32_t;

struct memory_t{
    int index;
    int sldpointer = 0;
    std::vector<INSTR> instr; 
    std::vector<DATA> data;
    std::map<std::string, int> lbl;
    std::map<int, std::string> inv;
    std::vector<int> sld;
    std::unordered_map<INSTR_KIND, INSTR_FORM> kind_to_form;

    memory_t():index(0), sldpointer(0), instr(INSTR_SIZE), data(DATA_SIZE), sld(400){
        kind_to_form[IN] = kind_to_form[OUT] = R;

        kind_to_form[FLUSH] = kind_to_form[HALT] = N;

        kind_to_form[ADD] = kind_to_form[SUB] = RRR;
        kind_to_form[ADDI] = kind_to_form[ADDIS] = RRI;
        kind_to_form[MUL16] = RR;
        kind_to_form[MUL16I] = RRI;
        kind_to_form[SLWI] = kind_to_form[SRWI] = kind_to_form[ORI] = RRI;

        kind_to_form[CMP] = kind_to_form[FCMP] = RR;
        kind_to_form[CMPI] = RI;

        kind_to_form[B] = kind_to_form[BL] = L;
        kind_to_form[BGE] = kind_to_form[BEQ] = kind_to_form[BLE] = L;
        kind_to_form[BLR] = N;

        kind_to_form[LW] = kind_to_form[SW] = RIR;
        kind_to_form[SWX] = kind_to_form[LWX] = RRR;
        kind_to_form[LWI] = kind_to_form[LLI] = RL;

        kind_to_form[MV] = RR;
        kind_to_form[MTLR] = kind_to_form[MFLR] = R;

        kind_to_form[FADD] = kind_to_form[FSUB] = kind_to_form[FMUL] = kind_to_form[FDIV] = RRR;
        kind_to_form[FADDMUL] = RRRR;
        kind_to_form[FABS] = kind_to_form[FNEG] = kind_to_form[FSQRT] = kind_to_form[FFLOOR] = RR;
        kind_to_form[FHALF] = kind_to_form[FSIN] = kind_to_form[FCOS] = kind_to_form[FATAN] = RR;
        kind_to_form[ITOF] = kind_to_form[FTOI] = RR;

        kind_to_form[NOT_INSTR] = NOT;
    } 

    void show_memory(const SHOW& show){
        if(show.m){
            for(int ad : show.maddr){
                ad = ((ad >> 2) << 2);
                std::cout << "around " << ad << " in the order of (int, float, binary)" << std::endl;
                for(int j = std::max(-ad, -show.wid); j <= std::min(DATA_SIZE - 1 - ad, show.wid); j++){
                    if(j == 0) std::cout << "\033[1;34m";
                    std::cout << "mem[" << ad + j << "] = (" << data[ad + j] << ", " << bit_cast<float, int>(data[ad + j]) << ", 0b'";
                    for(int i = 31; i >= 0; i--){
                        std::cout << (data[ad + j] >> i & 1);
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
                for(int j = l; j <= r; j ++){
                    std::cout << "mem[" << j << "] = (" << data[j] << ", " << bit_cast<float, int>(data[j]) << ", 0b'";
                    for(int i = 31; i >= 0; i--){
                        std::cout << (data[j] >> i & 1);
                        if(i % 8 == 0 && i) std::cout << " ";
                    }
                    std::cout << ")" << std::endl;
                }
                std::cout << "\033[m" << std::endl;
            }
        }
    }
    virtual ~memory_t() = default;
};
using MEMORY = memory_t;

struct memory2_t : MEMORY{
    long long cnt;
    std::vector<long long> opc_cnt;
    int32_t notify;
    memory2_t():cnt(0), opc_cnt(INSTR_KIND::TOTAL), notify(-1){}
};
using MEMORY_PRO = memory2_t;