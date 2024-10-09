# Transfer item from input container to furnace
# execute if data block 0 65 45 Items[0] unless data block -1 65 45 Items[{Slot:0b}] run data modify block -1 65 45 Items[{Slot:0b}] set from block -1 65 45 Items[0]
# execute if data block 0 65 45 Items[0] unless data block -1 65 45 Items[{Slot:0b}] run data remove block 0 65 45 Items[0]

execute if data block ~ ~ ~ Items[0] unless data block ~-1 ~ ~ Items[{Slot:0b}] run function slabcrafting:smelt_type/transfer_item
