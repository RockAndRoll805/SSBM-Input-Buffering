# static overwrite at 0x800caf14

nop						# there is a line of code that checks if the player meant to roll
nop						# nop'ing it out because it is unnecessary 
nop
nop
li r16, 0xC00
mfspr r19, 8
bl <queue_search_any>
mtspr 8, r19
cmpwi r17, 0
beq 0x28