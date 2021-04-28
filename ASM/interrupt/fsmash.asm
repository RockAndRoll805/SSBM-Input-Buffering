# function starts at 0x8008bfc4
# I think overwrite should start at 0x8008bfe0
# CURRENTLY NOT WORKING

lis r16, 0x60
mfspr r19, 8
bl <queue_search_any>
mtspr 8, r19
cmpwi r17, 0
bne 0xD8 		# should jump to 0x8008c0cc
b 0x40		# should go to 0x8008c038