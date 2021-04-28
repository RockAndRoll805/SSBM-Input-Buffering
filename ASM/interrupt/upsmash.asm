# overwrite at 0x8008c8a8

lis r16, 0x10
mfspr r19, 8
bl <queue_search>
mtspr 8, r19
cmpwi r17, 0