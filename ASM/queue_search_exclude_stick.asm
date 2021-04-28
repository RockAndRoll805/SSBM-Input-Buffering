# To use this function, load the value you want to find into r16
# The result will be the amount of times the entry appears in the queue in r17
# If any joystick values are found, the entry is not counted

mfspr r20, 8
bl <get_player_queue>
mtspr 8, r20

# r18 holds the value from the queue
# r14 holds the queue address
# r15 is loop counter
# r16 is the value we are looking for
# r17 is the occurence counter
# r19 is the stick values

lis r19, 0xF
or r19, r19, r16
lis r15, 0x0
lwz r18, 0(r14)			# branch to here for loop
and r18, r18, r19
cmpw r18, r16			# check to see if we have value at queue address
bne 0x8
addi r17, r17, 0x1		# increment occurence
addi r14, r14, 0x4		# increment queue address
addi r15, r15, 0x1		# increment loop counter
cmpwi r15, 0x8
bne -0x20

blr