execute as @e[type=armor_stand,tag=automate_cauldron] at @s if block ~ ~1 ~ minecraft:lever[powered=true] if block ~ ~-1 ~ minecraft:lava if block ~ ~ ~ minecraft:cauldron run setblock ~ ~ ~ minecraft:lava_cauldron replace

execute as @e[type=armor_stand,tag=automate_cauldron] at @s if block ~ ~1 ~ minecraft:lever[powered=true] if block ~ ~-1 ~ minecraft:lava run function automate:liquid/lava/automate_playsound
execute as @e[type=armor_stand,tag=automate_cauldron] at @s if block ~ ~1 ~ minecraft:lever[powered=true] if block ~ ~-1 ~ minecraft:lava run function automate:liquid/lava/automate_playsound
execute as @e[type=armor_stand,tag=automate_cauldron] at @s if block ~ ~1 ~ minecraft:lever[powered=true] if block ~ ~-1 ~ minecraft:lava run function automate:liquid/lava/automate_playsound

# debug
# tellraw @a {"text":"automate_fill_one.mcfunction"}
