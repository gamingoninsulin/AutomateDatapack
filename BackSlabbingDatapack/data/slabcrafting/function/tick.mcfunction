scoreboard objectives add bsd_coord_x dummy
scoreboard objectives add bsd_coord_y dummy
scoreboard objectives add bsd_coord_z dummy
scoreboard objectives add bsd_dim dummy
scoreboard objectives add bsd_placed_furnace minecraft.used:minecraft.furnace
scoreboard objectives add bsd_placed_blast_furnace minecraft.used:minecraft.blast_furnace
scoreboard objectives add bsd_placed_smoker minecraft.used:minecraft.smoker

execute as @a store result score @s bsd_coord_x run data get entity @s Pos[0]
execute as @a store result score @s bsd_coord_y run data get entity @s Pos[1]
execute as @a store result score @s bsd_coord_z run data get entity @s Pos[2]

execute as @a[nbt={Dimension:"minecraft:overworld"}] run scoreboard players set @s bsd_dim 0
execute as @a[nbt={Dimension:"minecraft:the_nether"}] run scoreboard players set @s bsd_dim -1
execute as @a[nbt={Dimension:"minecraft:the_end"}] run scoreboard players set @s bsd_dim 1

execute as @a[scores={bsd_placed_furnace=1..}] at @s run function slabcrafting:smelt_type/save_coords
execute as @a[scores={bsd_placed_blast_furnace=1..}] at @s run function slabcrafting:smelt_type/save_coords
execute as @a[scores={bsd_placed_smoker=1..}] at @s run function slabcrafting:smelt_type/save_coords
