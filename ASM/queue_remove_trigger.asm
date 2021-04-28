# get rid of the L and R inputs on the player's input queue

mfspr r20, 8
bl <get_player_queue>
mtspr 8, r20

# r18 holds the value from the queue
# r14 holds the queue address
# r15 is loop counter
# r16 is the value we are looking for
# r17 is the occurence counter
# stw source offset(destination)
lis r16, 0xFFFF
ori r16, r16, 0xFF9F
lis r15, 0x0
lwz r18, 0(r14)			# branch to here for loop
and r18, r18, r16
stw r18, 0(r14)
addi r14, r14, 0x4		# increment queue address
addi r15, r15, 0x1		# increment loop counter
cmpwi r15, 0x8
bne -0x18

blr