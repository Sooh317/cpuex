#pragma once
#include <assert.h>
#include "struct.hpp"

INSTR instr_fetch(unsigned int, const MEMORY&);
int simulate_whole(CPU&, const MEMORY&);
void execute_instr(const INSTR&, CPU&);
