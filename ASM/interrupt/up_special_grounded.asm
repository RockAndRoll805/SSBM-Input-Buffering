# static overwrite at 0x800d6984

lis r16, 0x1
ori r16, r16, 0x200
mfspr r19, 8
bl <queue_search>
mtspr 8, r19
cmpwi r17, 0
beq 0x14