add r31, r0, r31
addi r31, r0, 65535
addis r31, r0, 65535
sub r31, r0, r31
cmpwi cr7, r0, 65535
bgt cr7, L
bgt L
bl L
blr 
bctr 
bctrl
bcl 31, 0, L
lwz r31, 65535(r0)
lwzu r31, 65535(r0)
stw r31, 65535(r0)
stwu r31, 65535(r0)
mfspr r31, 8
mr r31, r31
mtspr 8, r31
fctiwz f31, f31
xoris r31, r0, 65535
b L
blt cr7, L
bne cr7, L
cmpw cr7, r31, r0
fabs f31, f31
fadd f31, f0, f31
fcmpu cr7, f31, f31
fcfiw f31, r31
fdiv f31, f0, f31
fmr f31, f31
fmul f31, f0, f31
fneg f31, f31
fsub f31, f0, f31
fsqrt f31, f31
ffloor f31, f31
fhalf f31, f31
fsin f31, f31
fcos f31, f31
fatan f31, f31
in r31
out r31, 65535
flush
ori r31, r0, 65535
lfs f1, 0(r2)
lfsx f31, r0, r31
stfsx f31, r0, r31
lwzx r31, r0, r31
mulli r31, r0, 65535
mulhwu r31, r0, r31
slwi r31, r0, 31
srwi r31, r0, 31
stfs f31, 65535(r0)
stwx r31, r0, r31
halt