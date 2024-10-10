execute as @e[type=armor_stand,tag=automate_cauldron] at @s if block ~ ~1 ~ minecraft:lever[powered=true] if block ~ ~-1 ~ minecraft:water if block ~ ~ ~ minecraft:water_cauldron[level=2] run setblock ~ ~ ~ minecraft:water_cauldron[level=3] replace

execute as @e[type=armor_stand,tag=automate_cauldron] at @s if block ~ ~1 ~ minecraft:lever[powered=true] if block ~ ~-1 ~ minecraft:water run function automate:liquid/water/automate_playsound
execute as @e[type=armor_stand,tag=automate_cauldron] at @s if block ~ ~1 ~ minecraft:lever[powered=true] if block ~ ~-1 ~ minecraft:water run function automate:liquid/water/automate_playsound
execute as @e[type=armor_stand,tag=automate_cauldron] at @s if block ~ ~1 ~ minecraft:lever[powered=true] if block ~ ~-1 ~ minecraft:water run function automate:liquid/water/automate_playsound

#execute run function automate:liquid/automate_playsound
# debug
# tellraw @a {"text":"automate_fill_three.mcfunction"}
