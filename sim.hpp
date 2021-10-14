#pragma once
#include <assert.h>
#include "struct.hpp"

INSTR instr_fetch(CPU& cpu, const MEMORY&);
int simulate_whole(CPU&, MEMORY&, MEMORY&);
void exec(INSTR, CPU&, MEMORY&);
