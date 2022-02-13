#pragma once
#include <stdint.h>
#include <iostream>
#include <vector>
#include <string>
#include <map>
#include <unordered_map>
#include <assert.h>
#include "util.hpp"


using GPR = int32_t; // general purpose register
using FPR = float; // floating point register
// using CR = uint32_t; // condition register
using LR = uint32_t; // link register
using CTR = uint32_t; // count register
using XER = uint32_t; // xer register
#define GPR_SIZE 32
#define FPR_SIZE 32
#define RECV_BUFFER_SIZE 8
#define SEND_BUFFER_SIZE 16

struct cpu_t{
    uint32_t cr;
    LR lr;
    CTR ctr;
    XER xer;
    unsigned int pc;
    int sbptr; // send buffer pointer
    std::vector<GPR> gpr;
    std::vector<FPR> fpr;
    std::vector<int8_t> send_buf;
    std::vector<int8_t> flushed;

    cpu_t():cr(0), lr(0), ctr(0), xer(0),pc(0), sbptr(0), gpr(GPR_SIZE, 0), fpr(FPR_SIZE, 0), send_buf(SEND_BUFFER_SIZE, '\0'){
        flushed.reserve(1024 * 1024);
    }

    void show_gpr(bool col = true){
        if(col) std::cout << "\033[1;31m";
        for(int i = GPR_SIZE - 1; i >= 0; i--){
            std::cout << "gpr[" << i << "] = (" << gpr[i] << ", ";
            print_binary_int1(gpr[i]);
            std::cout << ")\n";
        }
        if(col) std::cout << "\033[m\n";
    }
    void show_fpr(bool col = true){
        if(col) std::cout << "\033[1;32m";
        for(int i = FPR_SIZE - 1; i >= 0; i--){
            int d = bit_cast<int, float>(fpr[i]);
            std::cout << "fpr[" << i << "] = (" << fpr[i] << ", ";
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
    BGE,
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
    INSTR_UNKNOWN, 
    TOTAL,
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
    bool S, gr, fr, lr, cr, ctr, m, M, cache, F, B, label, Point, help, Notify, bad;
    bool next;
    int wid;
    long long Sval;
    int laddr;
    std::pair<std::string, int> bpoint;
    std::vector<int> maddr;
    std::vector<int> nval;
    std::vector<std::pair<int, int>> Maddr;
    std::vector<int> index;
    show_t():S(0), gr(0), fr(0), lr(0), cr(0), ctr(0), m(0), M(0), cache(0),F(0), B(0), label(0), Point(0), help(0), Notify(0), bad(0), next(1), wid(3), Sval(0), bpoint("", 0){}
};
using SHOW = show_t;

enum INSTR_FORM{
    D,
    DA,
    DIMM,
    DAB,  // d a b
    DAB2, // d a(b)
    DAB3, // fd a(b)
    DAIMM, // d a imm
    CAB,   // cr a, b
    CAIMM, // cr a, imm
    CFF, 
    BC, // branch (cr or nothing)
    BDAL, // branch d a label
    BLB, // branch label
    FDAB, // fd fa fb
    FDA, // fd fa
    FR,  // fd ra
    FRR, // fd ra rb
    TSPR, // move to spr
    FSPR, // move from spr
    N,  // no condition branch
    NOT, // not instruction
};

using DATA = int32_t;

struct memory_t{
    int index;
    int sldpointer = 0;
    std::vector<INSTR> instr; 
    std::vector<DATA> data;
    std::vector<bool> type; // type = 1 : float
    std::map<std::string, int> lbl;
    std::map<int, std::string> inv;
    std::vector<int> sld;
    std::unordered_map<INSTR_KIND, INSTR_FORM> kind_to_form;

    memory_t():index(0), sldpointer(0), instr(INSTR_SIZE), data(DATA_SIZE), type(DATA_SIZE), sld(400){
        kind_to_form[IN] = kind_to_form[OUT] = D;
        kind_to_form[MR] = DA;
        kind_to_form[ADD] = kind_to_form[SUB] = DAB;
        kind_to_form[MULHWU] = kind_to_form[STWX] = kind_to_form[LWZX] = DAB;
        kind_to_form[LWZ] = kind_to_form[STW] = kind_to_form[LWZU] = DAB2;
        kind_to_form[STWU] = DAB2;
        kind_to_form[STFS] = kind_to_form[LFS] = DAB3;
        kind_to_form[ORI] = kind_to_form[XORIS] = kind_to_form[ADDI] = DAIMM;
        kind_to_form[MULLI] = kind_to_form[SLWI] = DAIMM;
        kind_to_form[ADDIS] = kind_to_form[SRWI] = DAIMM;
        kind_to_form[CMPW] = CAB;
        kind_to_form[CMPWI] = CAIMM;
        kind_to_form[FCMPU] = CFF;
        kind_to_form[BNE] = kind_to_form[BGE] = kind_to_form[BLT] = kind_to_form[BGT] = BC;
        kind_to_form[BCL] = BDAL;
        kind_to_form[B] = kind_to_form[BL] = BLB;
        kind_to_form[FADD] = kind_to_form[FSUB] = kind_to_form[FMUL] = kind_to_form[FDIV] = FDAB;
        kind_to_form[FABS] = kind_to_form[FMR] = kind_to_form[FNEG] = kind_to_form[FSQRT] = kind_to_form[FCTIWZ] = FDA;
        kind_to_form[FHALF] = kind_to_form[FFLOOR] = kind_to_form[FSIN] = kind_to_form[FCOS] = kind_to_form[FATAN] = FDA;
        kind_to_form[FCFIW] = FR;
        kind_to_form[LFSX] = kind_to_form[STFSX] = FRR;
        kind_to_form[MTSPR] = TSPR;
        kind_to_form[MFSPR] = FSPR;
        kind_to_form[BLR] = kind_to_form[BCTR] = kind_to_form[BCTRL] = N;
        kind_to_form[FLUSH] = kind_to_form[HALT] = N;
        kind_to_form[NOT_INSTR] = NOT;
    } 

    void show_memory(const SHOW& show){
        if(show.m){
            for(int ad : show.maddr){
                ad = ((ad >> 2) << 2);
                std::cout << "around " << ad << std::endl;
                for(int j = std::max(-(ad >> 2), -show.wid); j <= std::min(DATA_SIZE - 1 - (ad >> 2), show.wid); j++){
                    if(j == 0) std::cout << "\033[1;34m";
                    std::cout << "mem[" << ad + 4*j << "~" << ad + 4*j + 3 << "] = (" << (type[(ad >> 2) + j] ? bit_cast<float, int>(data[(ad >> 2) + j]) : data[(ad >> 2) + j]) << ", 0b'";
                    for(int i = 31; i >= 0; i--){
                        std::cout << (data[(ad >> 2) + j] >> i & 1);
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
                    std::cout << "mem[" << j << "~" << j + 3 << "] = (" << (type[j >> 2] ? bit_cast<float, int>(data[j >> 2]) : data[j >> 2]) << ", 0b'";
                    for(int i = 31; i >= 0; i--){
                        std::cout << (data[j >> 2] >> i & 1);
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

struct fastmemory_t{
    int index;
    int sldpointer = 0;
    std::vector<INSTR> instr; 
    std::vector<DATA> data;
    std::map<std::string, int> lbl;
    std::vector<int> sld;
    std::unordered_map<INSTR_KIND, INSTR_FORM> kind_to_form;

    fastmemory_t():index(0), sldpointer(0), instr(INSTR_SIZE), data(DATA_SIZE), sld(400){
        kind_to_form[IN] = kind_to_form[OUT] = D;
        kind_to_form[MR] = DA;
        kind_to_form[ADD] = kind_to_form[SUB] = DAB;
        kind_to_form[MULHWU] = kind_to_form[STWX] = kind_to_form[LWZX] = DAB;
        kind_to_form[LWZ] = kind_to_form[STW] = kind_to_form[LWZU] = DAB2;
        kind_to_form[STWU] = DAB2;
        kind_to_form[STFS] = kind_to_form[LFS] = DAB3;
        kind_to_form[ORI] = kind_to_form[XORIS] = kind_to_form[ADDI] = DAIMM;
        kind_to_form[MULLI] = kind_to_form[SLWI] = DAIMM;
        kind_to_form[ADDIS] = kind_to_form[SRWI] = DAIMM;
        kind_to_form[CMPW] = CAB;
        kind_to_form[CMPWI] = CAIMM;
        kind_to_form[FCMPU] = CFF;
        kind_to_form[BNE] = kind_to_form[BGE] = kind_to_form[BLT] = kind_to_form[BGT] = BC;
        kind_to_form[BCL] = BDAL;
        kind_to_form[B] = kind_to_form[BL] = BLB;
        kind_to_form[FADD] = kind_to_form[FSUB] = kind_to_form[FMUL] = kind_to_form[FDIV] = FDAB;
        kind_to_form[FABS] = kind_to_form[FMR] = kind_to_form[FNEG] = kind_to_form[FSQRT] = kind_to_form[FCTIWZ] = FDA;
        kind_to_form[FHALF] = kind_to_form[FFLOOR] = kind_to_form[FSIN] = kind_to_form[FCOS] = kind_to_form[FATAN] = FDA;
        kind_to_form[FCFIW] = FR;
        kind_to_form[LFSX] = kind_to_form[STFSX] = FRR;
        kind_to_form[MTSPR] = TSPR;
        kind_to_form[MFSPR] = FSPR;
        kind_to_form[BLR] = kind_to_form[BCTR] = kind_to_form[BCTRL] = N;
        kind_to_form[FLUSH] = kind_to_form[HALT] = N;
        kind_to_form[NOT_INSTR] = NOT;
    }
};
using FASTMEMORY = fastmemory_t;

struct memory2_t : MEMORY{
    int32_t notify;
    std::vector<unsigned long long> opc_cnt;
    std::vector<long long> opc_plus;
    memory2_t():notify(-1), opc_cnt(INSTR_KIND::TOTAL), opc_plus(INSTR_KIND::TOTAL){}
};
using MEMORY_PRO = memory2_t;