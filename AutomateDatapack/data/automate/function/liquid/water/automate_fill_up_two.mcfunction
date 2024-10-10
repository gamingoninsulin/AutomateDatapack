execute as @e[type=armor_stand,tag=automate_cauldron] at @s if block ~ ~1 ~ minecraft:lever[powered=true] if block ~ ~-1 ~ minecraft:water if block ~ ~ ~ minecraft:water_cauldron[level=1] run setblock ~ ~ ~ minecraft:water_cauldron[level=2] replace

# debug
# tellraw @a {"text":"automate_fill_two.mcfunction"}
