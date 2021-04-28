# static overwrite at 0x800d6850

li r16, 0x200
mfspr r19, 8
bl <queue_search_exclude_stick>
mtspr 8, r19
cmpwi r17, 0
beq 0x14