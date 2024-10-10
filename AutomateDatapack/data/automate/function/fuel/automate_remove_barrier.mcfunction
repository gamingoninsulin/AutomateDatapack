# Remove the barrier block from the fuel slot
data modify block ~ ~ ~ Items[{Slot:1b}] set value {id:"minecraft:air",count:1b}
