#include <stdint.h>
#include <map>
#include <cassert>
#include <string>
#include "struct.hpp"

enum INSTR_KIND opcode_of_instr(const std::string&);
void recognize_instr(MEMORY&, const std::vector<std::string>&, std::map<std::string, int>&, std::map<std::string, int>&);
int opcode_to_bit(INSTR_KIND kind);