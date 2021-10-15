#pragma once 
#include "struct.hpp"
#include <iostream>
#include <fstream>
#include <string>
#include <vector>
#include <cassert>
#include <map>


std::vector<std::string> remove_chars(std::string&, const std::string&);
void next_memory_address(int& ,const std::vector<std::string>&);
void put_instr_into_memory(std::string&, MEMORY&, std::map<std::string, int>&);
void decode(const char*, MEMORY&, std::map<std::string, int>&);
int collect_label(const char*, std::map<std::string, int>&, int);
