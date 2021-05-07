# WAS static overwrite at 0x80096574
#  now injection at 0x80096578

lis r16, 0x4
ori r16, r16, 0x200
mfspr r19, 8
bl <queue_search>
mtspr 8, r19
cmpwi r17, 0
bne 0x1c
xoris r16, r16, 0xC
mfspr r19, 8
bl <queue_search>
mtspr 8, r19
cmpwi r17, 0
beq 0x8
b 0x80096590
b 0x80096584