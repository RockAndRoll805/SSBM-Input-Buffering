# queue a player's queue
#  currently unused

mfspr r20, 8
bl <get_player_queue>
mtspr 8, r20

# r14 holds the queue address
# r15 is loop counter
# r16 is the value we are looking for
# r17 is the occurence counter
# stw source offset(destination)
lis r18, 0x0
lis r15, 0x0
stw r18, 0(r14)			# branch to here for loop
addi r14, r14, 0x4		# increment queue address
addi r15, r15, 0x1		# increment loop counter
cmpwi r15, 0x8
bne -0x10

blr