# Initialize the scoreboard (run this once in a load function)
scoreboard objectives add bsd_water_sound dummy

# Check for an empty cauldron and set the fluid to water if there is water underneath it
execute if block 1 65 45 minecraft:cauldron if block 1 64 45 minecraft:water run setblock 1 65 45 minecraft:water_cauldron[level=3] replace

# Play sound when the water cauldron is full and water is underneath, then set the score
execute if block 1 65 45 minecraft:water_cauldron[level=3] if block 1 64 45 minecraft:water unless score #bsd_water_sound bsd_water_sound matches 1 run function slabcrafting:water_type/playsound

# Reset the score when the cauldron is not full or there's no water underneath
execute unless block 1 65 45 minecraft:water_cauldron[level=3] run scoreboard players set #bsd_water_sound bsd_water_sound 0
