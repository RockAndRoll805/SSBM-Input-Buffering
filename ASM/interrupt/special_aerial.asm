# injection at 0x80096684

li r16, 0x200
mfspr r19, 8
bl <queue_search>
mtspr 8, r19

cmpwi r17, 0
beq 0x8
b 0x80096688
b 0x800968ac