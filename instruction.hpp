#include <stdint.h>
#include <map>
#include <cassert>
#include <string>
#include <stdio.h>
#include "struct.hpp"

enum INSTR_KIND opcode_of_instr(const std::string&);
INSTR recognize_instr(std::map<std::string, int>&, const std::vector<std::string>&);
int opcode_to_bit(INSTR_KIND kind);
std::string opcode_to_string(INSTR_KIND);
void show_instr(INSTR_KIND, int, int, int);
void show_instr_binary(INSTR_KIND, int, int, int);