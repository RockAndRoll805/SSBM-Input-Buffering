
# r18 holds character entity data pointer address
# r14 holds address of character entity data
# r15 is counter for player number

lis r15, 0x0			# counter
lis r18, 0x8045			# this code determines which player queue to read
ori r18, r18, 0x3130	# load P1 base 0x80453130
lwz r14, 0(r18)			# loop to here
cmpw r24, r14
beq 0x10				# get out of here if we found it
addi r15, r15, 0x1		# increment counter
addi r18, r18, 0xE90	# increment character entity data pointer
b -0x14					# be warned that this can go forever, there is no failsafe

lis r14, 0x8000
ori r14, r14, 0x1800
mulli r15, r15, 0x20
add r14, r14, r15		# go to corresponding queue

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