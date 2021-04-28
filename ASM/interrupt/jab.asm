# overwrite at 0x8008aa08

li r16, 0x100
mfspr r19, 8
bl <queue_search_exclude_stick>
mtspr 8, r19
cmpwi r17, 0