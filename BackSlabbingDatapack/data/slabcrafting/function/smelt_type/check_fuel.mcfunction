# # Turn off if lava is not below
# execute if block ~ ~ ~ #minecraft:fuel_consumers unless block ~ ~-1 ~ minecraft:lava run data merge block ~ ~ ~ {BurnTime:0, CookTimeTotal:0, CustomName:'{"text":"Auto Block Turned OFF"}'}

# # Turn on if lava is below and not already lit
# execute if block ~ ~ ~ #minecraft:fuel_consumers[lit=false] if block ~ ~-1 ~ minecraft:lava run data merge block ~ ~ ~ {BurnTime:20000, CookTimeTotal:400, CustomName:'{"text":"Auto Block Turned ON"}'}


execute store result score #x bsd_coord_x run data get storage slabcrafting:block_coords X
execute store result score #y bsd_coord_y run data get storage slabcrafting:block_coords Y
execute store result score #z bsd_coord_z run data get storage slabcrafting:block_coords Z

# Turn off if lava is not below
execute positioned ~ ~ ~ if block ~ ~ ~ #minecraft:fuel_consumers unless block ~ ~-1 ~ minecraft:lava run data merge block ~ ~ ~ {BurnTime:0, CookTimeTotal:0, CustomName:'{"text":"Auto Block Turned OFF"}'}

# Turn on if lava is below and not already lit
execute positioned ~ ~ ~ if block ~ ~ ~ #minecraft:fuel_consumers[lit=false] if block ~ ~-1 ~ minecraft:lava run data merge block ~ ~ ~ {BurnTime:20000, CookTimeTotal:400, CustomName:'{"text":"Auto Block Turned ON"}'}
