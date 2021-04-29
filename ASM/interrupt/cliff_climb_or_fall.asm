# start of function is at 0x8009aafc

# when fall is triggered, the branch at 0x8009ab24 activates
# when climb is triggered, it does not do any branches
# when the player is holding right as they grab the ledge, it goes until 0x8009ab50 where it takes the branch and then again takes the branch at 0x8009ab64

# for these reasons, simply nop'ing out the branches at 0x8009ab50 and 0x8009ab70