execute store result storage slabcrafting:block_coords X int 1 run scoreboard players get @s bsd_coord_x
execute store result storage slabcrafting:block_coords Y int 1 run scoreboard players get @s bsd_coord_y
execute store result storage slabcrafting:block_coords Z int 1 run scoreboard players get @s bsd_coord_z
execute store result storage slabcrafting:block_coords Dim int 1 run scoreboard players get @s bsd_dim

scoreboard players set @s bsd_placed_furnace 0
scoreboard players set @s bsd_placed_blast_furnace 0
scoreboard players set @s bsd_placed_smoker 0

tellraw @a [{"text":"Coordinates saved: "},{"nbt":"X","storage":"slabcrafting:block_coords"},{"text":", "},{"nbt":"Y","storage":"slabcrafting:block_coords"},{"text":", "},{"nbt":"Z","storage":"slabcrafting:block_coords"},{"text":" in dimension "},{"nbt":"Dim","storage":"slabcrafting:block_coords"}]