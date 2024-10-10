execute as @e[type=armor_stand,tag=automate_cauldron] at @s if block ~ ~1 ~ minecraft:lever[powered=true] if block ~ ~-1 ~ minecraft:water if block ~ ~ ~ minecraft:cauldron run setblock ~ ~ ~ minecraft:water_cauldron[level=1] replace

# debug
# tellraw @a {"text":"automate_fill_one.mcfunction"}
