# execute if block -1 65 45 minecraft:furnace if block -1 64 45 minecraft:lava run function slabcrafting:smelt_type/smelt
# execute if block -1 65 45 minecraft:blast_furnace if block -1 64 45 minecraft:lava run function slabcrafting:smelt_type/smelt
# execute if block -1 65 45 minecraft:smoker if block -1 64 45 minecraft:lava run function slabcrafting:smelt_type/smelt

# execute if block -1 65 45 minecraft:furnace unless block -1 64 45 minecraft:lava run function slabcrafting:smelt_type/smelt
# execute if block -1 65 45 minecraft:blast_furnace unless block -1 64 45 minecraft:lava run function slabcrafting:smelt_type/smelt
# execute if block -1 65 45 minecraft:smoker unless block -1 64 45 minecraft:lava run function slabcrafting:smelt_type/smelt

execute store result score #x bsd_coord_x run data get storage slabcrafting:block_coords X
execute store result score #y bsd_coord_y run data get storage slabcrafting:block_coords Y
execute store result score #z bsd_coord_z run data get storage slabcrafting:block_coords Z

execute positioned ~-1 ~1 ~1 if block ~ ~ ~ #minecraft:fuel_consumers run function slabcrafting:smelt_type/smelt
