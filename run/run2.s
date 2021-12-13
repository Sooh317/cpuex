_min_caml_start: # main entry point
    addi    r1, r1, -4
    addi    r2, r2, -8
    addi    r5, r5, 999999
    stwx    r5, r3, r1
    stwx    r5, r3, r2
    stwu    r5, -12(r3)
    addi    r3, r3, 12
    lwzu    r1, -4(r3)
    addi    r3, r3, 4
    lwzu    r5, -12(r3)
    addi    r3, r3, 12
    lwzx    r2, r3, r2
    halt
