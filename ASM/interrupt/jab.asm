# WAS overwrite at 0x8008aa08
#  now injection at 0x8008aa1c

li r16, 0x100
mfspr r19, 8
bl <queue_search_exclude_stick>
mtspr 8, r19
cmpwi r17, 0
beq 0x8
b 0x8008aa20			# perform jab
b 0x8008ab18			# no jab