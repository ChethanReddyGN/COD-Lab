.data
y: .word 0x12345678
m: .word 0x23456789
L: .word 0x11111111
D: .word 0x00000123
Z: .word 0x87346923
C: .word 0x83656713
x: .word 0
.text
la x10,y
la x11,m
la x12,L
la x13,D
la x14,Z
la x15,C
la x16,x
lw x17,0(x10)
lw x18,0(x11)
lw x19,0(x12)
lw x20,0(x13)
lw x21,0(x14)
lw x22,0(x15)
add x23,x17,x18
sub x24,x19,x20
add x25,x21,x22
sub x26,x23,x24
add x26,x26,x25
sub x26,x26,x20
sw x26,0(x16)