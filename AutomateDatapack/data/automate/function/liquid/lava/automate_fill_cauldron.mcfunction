# Cauldron refill logic
execute run schedule function automate:liquid/lava/automate_fill_up_one 60t append

# Red dust particle effect
execute as @e[type=armor_stand,tag=automate_cauldron] at @s if block ~ ~1 ~ minecraft:lever[powered=true] if block ~ ~-1 ~ minecraft:lava if block ~ ~ ~ minecraft:lava_cauldron run particle dust{color:[1.0,0.0,0.0],scale:1} ~ ~0.3 ~ 0.0 0.1 0.0 1 6 force

# debug
# stellraw @a {"text":"automate_fill_cauldron.mcfunction"}