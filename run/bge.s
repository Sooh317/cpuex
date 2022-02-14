    b _min_caml_start
dummy:
    addi r1, r1, 100
_min_caml_start:
    addi r1, r1, 1
    addi r2, r2, 2
    cmp  r1, r2
    bge  dummy
next:
    addi r1, r1, 1
    cmp  r1, r2
    bge jump
next1:
    addi r3, r3, 10000
    halt
jump:
    cmp  r1, r2
    bge next1