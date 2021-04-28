# overwrite at 0x8008cbbc

lis r16, 0x20
mfspr r19, 8
bl <queue_search>
mtspr 8, r19
cmpwi r17, 0