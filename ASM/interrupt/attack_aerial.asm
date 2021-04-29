# WAS overwrite at 0x8008cd88
#  now injection at 0x8008cda0

lis r16, 0xF0
ori r16, r16, 0x100
mfspr r19, 8
bl <queue_search_any>
mtspr 8, r19
cmpwi r17, 0


# beq 0x8
# b 0x8008cda4			# perform aerial
# b 0x8008cdf0			# no aerial