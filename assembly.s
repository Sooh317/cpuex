addi r3, r3, 128
b 43692
bgt cr7, 43692
bl 43692
blr
blt cr7, 43692
bne cr7, 43692
cmpw cr7, r5, r2
cmpwi cr7, r2, 0
fadd f1, f1, f2
fcmpu cr7, f1, f0
fdiv f1, f1, f0
fmr f0, f1
fmul f0, f0, f1
fneg f0, f0
fsub f1, f1, f2
lfd f1, 0(r2)
lwz, r2, 4(r3)
mfspr r31, 8
mr r2, r5
mtspr 8, r31
slwi r7, r2, 2
stfd f1, 0(r2)
lwz, r31, 84(r3)
stwu r1, -96(r1)
stwx r6, r2, r5
