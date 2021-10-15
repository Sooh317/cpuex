#include "util.hpp"

void print_binary_int(int a){
    for(int i = 31; i >= 0; i--){
        std::cerr << (a >> i & 1);
    }
    std::cerr << std::endl;
}

void clear_and_set(int &k, int l, int r, int v){ // clear [l, r] and substitute v
    int tmp = ~0;
    for(int i = l; i <= r; i++) tmp ^= 1 << i;
    k = (k & tmp) | (v << l);
}

int kth_bit(int a, int k){
    return (a >> k) & 1;
}

int segment(int a, int l, int r){
    int res = 0;
    for(int i = 0; l + i <= r; i++){
        res |= ((a >> (l + i)) & 1) << i;
    }
    return res;
}

int lo16(int x){return (x & 0xffff);}
int ha16(int x){return (x & 0xffff0000);}

std::string opcode_to_string(INSTR_KIND kind){
    switch (kind){
    case ADD:
        return "add";
    case ADDI:
        return "addi";
    case ADDIS:
        return "addis";
    case CMPWI:
        return "cmpwi";
    case BGT:
        return "bgt";
    case BL:
        return "bl";
    case BLR:
        return "blr";
    case BCL:
        return "bcl";
    case BCTR:
        return "bctr";
    case LWZ:
        return "lwz";
    case LWZU:
        return "lwzu";
    case STW:
        return "stw";
    case STWU:
        return "stwu";
    case MFSPR:
        return "mfspr";
    case MR:
        return "mr";
    case MTSPR:
        return "mtspr";
    case NOT_INSTR:
        return "not_instr";
    default:
        return "instr_unknown";
    }
    return "-1";
}