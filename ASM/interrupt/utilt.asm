# inject at 0x8008b9a8

lis r16, 0x1
ori r16, r16, 0x100
mfspr r19, 8
bl <queue_search>
mtspr 8, r19
cmpwi r17, 0
beq 0x8
b 0x8008b9ac # activate utilt
b 0x8008ba1c # no utilt