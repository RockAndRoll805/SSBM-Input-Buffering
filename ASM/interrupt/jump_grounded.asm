# static overwrite at 0x800caf0c

li r16, 0x400
mfspr r19, 8
bl <queue_search>
mtspr 8, r19
cmpwi r17, 0
bne 0x1C

li r16, 0x800
mfspr r19, 8
bl <queue_search>
mtspr 8, r19
cmpwi r17, 0
beq 0x28