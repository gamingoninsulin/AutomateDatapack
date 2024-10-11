# Debug message
# tellraw @a {"text":"autoamte_check_furnaces.mcfunction executed", "color":"green"}

# Check for items in furnaces and lava underneath
execute as @e[type=armor_stand,tag=automate_furnace] at @s if block ~ ~-1 ~ minecraft:lava run scoreboard players set @s automate_lava_check 1
execute as @e[type=armor_stand,tag=automate_furnace] at @s unless block ~ ~-1 ~ minecraft:lava run scoreboard players set @s automate_lava_check 0
execute as @e[type=armor_stand,tag=automate_furnace,scores={automate_lava_check=1}] at @s if data block ~ ~ ~ Items[{Slot:0b}] run function automate:fuel/automate_smelt_progress

# Check for specific furnace types
execute as @e[type=armor_stand,tag=automate_furnace] at @s if block ~ ~ ~ furnace run tag @s add automate_regular_furnace
execute as @e[type=armor_stand,tag=automate_furnace] at @s if block ~ ~ ~ blast_furnace run tag @s add automate_blast_furnace
execute as @e[type=armor_stand,tag=automate_furnace] at @s if block ~ ~ ~ smoker run tag @s add automate_smoker
