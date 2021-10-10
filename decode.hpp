#pragma once 
#include <iostream>
#include <fstream>
#include <string>
#include <vector>
#include <cassert>
#include <map>

enum INSTR_KIND opcode_of_instr(const std::string&);
int reg_number(const std::string&, int);
void recognize_instr(MEMORY& , const std::vector<std::string>&, std::map<std::string, int>&);
std::vector<std::string> remove_chars(std::string&, const std::string&);
void put_instr_into_memory(std::string&, MEMORY&, std::map<std::string, int>&);
void decode(const std::string&, MEMORY &, std::map<std::string, int>&);