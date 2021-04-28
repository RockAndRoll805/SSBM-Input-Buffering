# static overwrite at 0x80096574

lis r16, 0xc
ori r16, r16, 0x200
mfspr r19, 8
bl <queue_search>
mtspr 8, r19
cmpwi r17, 0
beq 0x38