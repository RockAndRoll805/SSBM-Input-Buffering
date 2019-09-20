##when this function is called, the register
##values are as follows
#r14: mem address of q that holds input
#r15: the value of the q at the address
#r16: loop increment value (useless)
#r17: the value that we compared that got us here
#r18: loop count (useless)
#r19: r17 AND r15 
#r20: determine which function to go to (useless)

lis r16, 0xF
and r16, r15, r16
srw r16, r16, 0x20		#right shift
lis r17, 0x80c6
ori r17, r17, 0xb964	
lwz r18, 0(r17)			#load internal ID
mulli r18, r18, 0x4
cmpwi r16, 0			#neutral------
bne 28
lis r14, 0x803c
ori r14, r14, 0x167c
add r14, r14, r18
lwz r15, 0(r14)			#load n-special location
b r15
cmpwi r16, 0x1			#up-----------
bne 28
lis r14, 0x803c
ori r14, r14, 0x1784
add r14, r14, r18
lwz r15, 0(r14)			#load u-special location
mtlr r15
blr
cmpwi r16 0x2			#down---------
bne 28
lis r14, 0x803c
ori r14, r14, 0x1700
add r14, r14, r18
lwz r15, 0(r14)			#load d-special location
mtlr r15
blr
lis r14, 0x803c			#side---------
ori r14, r14, 0x13e8
add r14, r14, r18
lwz r15, 0(r14)			#load s-special location
mtlr r15
blr