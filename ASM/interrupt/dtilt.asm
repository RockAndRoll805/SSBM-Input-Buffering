# inject at 0x8008bb6c

lis r16, 0x2
ori r16, r16, 0x100
mfspr r19, 8
bl <queue_search>
mtspr 8, r19
cmpwi r17, 0
beq 0x8
b 0x8008bb70 # activate dtilt
b 0x8008bbe4 # no dtilt