# this is too large to be a static overwrite
# inject at 0x8008b680

lis r16, 0x4		# left
ori r16, r16, 0x100
mfspr r19, 8
bl <queue_search>
cmpwi r17, 0
bne 0xC
xoris r16, r16, 6		# right
bl <queue_search>
mtspr 8, r19
cmpwi r17, 0
beq 0x8
b 0x8008b684	# ftilt activate
b 0x8008b76c	# no ftilt