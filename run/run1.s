dummy:
    out     r1, 0
    halt
dummy1:
    out     r1, 0
    fhalf   f0, f0
    fcmpu   cr7, f2, f0
    bge     cr7, dummy
_min_caml_start: # main entry point
    addi    r1, r1, 50
    addi    r2, r2, 2
    addi    r4, r4, 3
    fcfiw   f0, r2
    fcfiw   f1, r4
    fhalf   f2, f1
    fcmpu	cr7, f2, f0
    blt		cr7, dummy1
