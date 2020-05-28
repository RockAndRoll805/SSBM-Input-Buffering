##when this function is called, the register
##values are as follows
#r14: mem address of q that holds input
#r15: the value of the q at the address
#r16: loop increment value (useless)
#r17: the value that we compared that got us here
#r18: loop count (useless)
#r19: r17 AND r15 
#r20: determine which function to go to (useless)

#cstick values range from 0x100000 to 0x800000
lis r16, 0xF0			#that is why I and it with F
and r16, r15, r16
srw r16, r16, 0x20		#right shift
cmpwi r16, 0x1			#if equal, go to up smash
bne 0x8
b 0x8008ca38			#usmash address
cmpwi r16, 0x2			#else if equal, down smash
bne 0x8
b 0x8008cc5c			#dsmash address
#Pseudo code below		#else, do fsmash
#get facing direction of player
#if opposite of pressed direction
##load value to turn player around
b <<forward smash>>

