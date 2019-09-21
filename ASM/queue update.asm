#This code is inserted at the end of the
#controller update function (0x803779b8)

#code for updating queue
lis r14, 0x8000
ori r14, r14, 0x1810
li r16, 0x4
li r17, 0x14
lwz r15, 0(r14) #branch to here with loop
stw r15, 4(r14)
subf r14, r16, r14
subf r17, r16, r17
cmpwi r17, 0
bne -20

#code for storing controller input
#lwz destination offset(source)
#stw source offset(destination)
#subf source, smaller, bigger 
lis r14, 0x804c
ori r14, r14, 0x1fac
lwz r15, 0(r14)
lis r16, 0x8000
ori r16, r16, 0x1800
stw r15, 0(r16) #stores controller input 

# last two lines required when 
##branching back to controller update
mtlr r0
blr
