# inject at 0x80099a70

li r16, 0x20
mfspr r19, 8
bl <queue_search>
mtspr 8, r19
cmpwi r17, 0
bne 0x20

li r16, 0x40
mfspr r19, 8
bl <queue_search>
mtspr 8, r19
cmpwi r17, 0
bne 0x8
b 0x80099a88	# no airdodge
mfspr r19, 8
bl <queue_clear>
mtspr 8, r19
b 0x80099a74	# do airdodge