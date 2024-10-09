execute if block ~ ~ ~ cauldron at @s if block ~ ~-1 ~ minecraft:water run setblock ~ ~ ~ minecraft:water_cauldron[level=3]
execute if block ~ ~ ~ minecraft:water_cauldron[level=3] run playsound ambient.water.splash ~ ~ ~ 1 1

execute if block ~ ~2 ~ cauldron if block ~ ~2 ~ minecraft:cauldron run setblock ~ ~2 ~ minecraft:water_cauldron replace 
execute if block ~ ~1 ~ minecraft:water run playsound minecraft:item.bucket.empty block @p ~ ~ ~ 1