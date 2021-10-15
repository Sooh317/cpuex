#pragma once
#include <assert.h>
#include "struct.hpp"

INSTR instr_fetch(CPU& cpu, const MEMORY&);
int simulate_whole(CPU&, MEMORY&);
bool exec(INSTR, CPU&, MEMORY&);
