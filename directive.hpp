#pragma once
#include "struct.hpp"
#include <string>
#include <vector>

enum DIRECTIVE_KIND directive_kind(const std::string&);
void process_ascii_directive(MEMORY&, const std::string&);
void process_long_directive(MEMORY&, const std::string&);