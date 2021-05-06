# 0x800ca094

# 0x800ca0c8 first branch, try nop'ing

# 0x800ca0d8 second branch, try putting injection here

lis r16, 0xC
mfspr r19, 8
bl <queue_search_any>
mtspr 8, r19
cmpwi r17, 6
blt 0x8
b 0x800ca0dc			# perform dash
b 0x800ca10c			# no dash or turnaround