# static overwrite at 0x800d89b4

li r16, 0x120
mfspr r19, 8
bl <queue_search>
mtspr 8, r19
cmpwi r17, 0
bne 0x34

li r16, 0x140
mfspr r19, 8
bl <queue_search>
mtspr 8, r19
cmpwi r17, 0
bne 0x1C

li r16, 0x10
mfspr r19, 8
bl <queue_search>
mtspr 8, r19
cmpwi r17, 0
beq 0x24