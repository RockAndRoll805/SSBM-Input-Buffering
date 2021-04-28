#This code is inserted at the end of the
# WAS controller update function (0x803779bc)
# now is 0x801a4dec

800d9368				# original instruction
b 0x0
li r18, 0x0				# for all 4 players we are going to make their queues
mulli r19, r18, 0x20	# branch to here with second loop

lis r14, 0x8000
ori r14, r14, 0x1818
add r14, r14, r19
li r16, 0x4	
li r17, 0x14 # 0x1c
lwz r15, 0(r14)			# branch to here with loop
stw r15, 4(r14)			# move everything in the queue over
subf r14, r16, r14
subf r17, r16, r17
cmpwi r17, 0
bne -20

#code for storing controller input
#lwz destination offset(source)
#stw source offset(destination)
#subf source, smaller, bigger 
lis r16, 0x804c
ori r16, r16, 0x1fac
mulli r19, r18, 0x44
add r16, r16, r19

lwz r15, 0(r16)			# load input
addi r14, r14, 0x4
stw r15, 0(r14)			# stores controller input 

addi r18, r18, 0x1
cmpwi r18, 0x4
bne -0x54

b 0x801a4df0