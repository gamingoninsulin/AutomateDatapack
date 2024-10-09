# Transfer smelted item from furnace to output container
# execute if data block -1 65 45 Items[{Slot:2b}] run data modify block -2 65 45 Items append from block -1 65 45 Items[{Slot:2b}]
# execute if data block -1 65 45 Items[{Slot:2b}] run data remove block -1 65 45 Items[{Slot:2b}]

execute if data block ~ ~ ~ Items[0] unless data block ~-1 ~ ~ Items[{Slot:0b}] run function slabcrafting:smelt_type/transfer_item
