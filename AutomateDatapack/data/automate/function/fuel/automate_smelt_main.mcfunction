# Check for lava beneath placed furnaces
execute as @e[type=armor_stand,tag=automate_saved_coords] at @s if block ~ ~-1 ~ minecraft:lava run function automate:fuel/automate_smelt_progress

# Clean up armor stands
kill @e[type=armor_stand,tag=automate_saved_coords]