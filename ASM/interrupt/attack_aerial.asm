# overwrite at 0x8008cd88

lis r16, 0xF0
ori r16, r16, 0x100
mfspr r19, 8
bl <queue_search>
mtspr 8, r19
cmpwi r17, 0
beq 0x50