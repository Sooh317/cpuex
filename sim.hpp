#pragma once
#include <assert.h>
#include <iostream>
#include <map>
#include "struct.hpp"
#include "option.hpp"

INSTR instr_fetch(CPU& cpu, const MEMORY&);
int simulate_whole(CPU&, MEMORY&, OPTION&);
int simulate_step(CPU&, MEMORY&, OPTION&);
bool exec(CPU&, MEMORY&, int&, OPTION&);
void execution(CPU&, MEMORY&, OPTION&);