#code for getting shorthop frames
##inject it at 0x800cb180
lis r14, 0x80C6
ori r14, r14, 0xBAA8
lwz r15, 0(r14)
srw r15, r15, 0x15
li r14, 0x7F
and r15, r15, r14
cmpwi r15, 3 #need to check if <3
bgt 0x8
li r15, 3
#now need to check if player was holding
##jump for r15 amount of frames
##and then branch to 0x800cb184 for shorthop
##and branch to 0x800cb194 for fullhop
lis r17, 0x0001
ori r17, r17, 0xC00
lis r14, 0x8000
ori r14, r14, 0x1800
li r18, 0x4
mulli r15, r15, 0x4 #4*jumpsquat, loop counter
lwz r16, 0(r14)
and r17, r17, r16 #AND queue value
add r14, r14, r18 #increase mem offset
subf r15, r18, r15 #decrement
cmpwi r15, 0
bne -20
fmuls f2, f1, f0 #orig instruction at overwite
cmpwi r17, 0
beq 0x8
b 0x800cb194
b 0x800cb184