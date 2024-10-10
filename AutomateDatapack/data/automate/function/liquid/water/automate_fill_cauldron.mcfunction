# Cauldron refill logic
execute run schedule function automate:liquid/water/automate_fill_up_one 60t append
execute run schedule function automate:liquid/water/automate_fill_up_two 120t append
execute run schedule function automate:liquid/water/automate_fill_up_three 180t append

# Blue dust particle effect
execute as @e[type=armor_stand,tag=automate_cauldron] at @s if block ~ ~1 ~ minecraft:lever[powered=true] if block ~ ~-1 ~ minecraft:water if block ~ ~ ~ minecraft:water_cauldron run particle dust{color:[0.0,0.0,1.0],scale:1} ~ ~0.3 ~ 0.0 0.1 0.0 1 6 force
