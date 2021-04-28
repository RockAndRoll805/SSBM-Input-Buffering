lis r17, 0x1
ori r17, 0x0C00 	 #jump input compare
li r16, 0x4 		 #loop increment
li r18, 0x0 		 #counter for input 
li r20, 0x0
lis r14, 0x8000
ori r14, r14, 0x1800 #memory address to read
lwz r15, 0(r14)		 #load input
and r19, r17, r15	 #check to see if match
cmpw r19, 0			 #branch if it is
bgt 68
add r20, r20, r16	 #increase loop
add r14, r14, r16	 #increase memory offset
cmpwi r20, 0x20		 
bne -28
li r19, 0x1
add r18, r18, r19 	 #increment input type
li r17, 0x200		 #set special input
cmpwi r19, 1
beq -56
lis r17, 0xF0		 #set strong input
cmpwi r19, 2
beq -68
li r17, 0x100 		 #set normal input
cmpwi r19, 3
beq -80
blr
cmpwi r18, 0		 #branch to here when found input type
beq 0x800cb4e0		 #kneebend function; syntax only works with MCM
cmpwi r18, 1
beq <grounded_special> 
cmpwi r18, 2
beq <grounded_smash>
cmpwi r18, 3
beq <grounded_normal>
blr
nop

#0x00 01 00 00	UP
#0x00 02 00 00	DOWN
#0x00 04 00 00	LEFT
#0X00 08 00 00	RIGHT
