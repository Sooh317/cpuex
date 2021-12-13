_min_caml_start: # main entry point
    addi    r1, r1, 1
    addi    r2, r2, -8
    fcfiw   f0, r1
    fhalf   f0, f0
    stw     r1, 0(r3)
    stfs    f0, -4(r3)
    stfsx   f0, r3, r2
    lfsx    f4, r3, r2
    lfs     f5, -4(r3)
    halt