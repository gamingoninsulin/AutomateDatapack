# Debug message
# tellraw @a {"text":"automate_smelt_main.mcfunction executed", "color":"green"}

# Check for items in furnaces and lava underneath
execute as @e[type=armor_stand,tag=automate_furnace] at @s if block ~ ~-1 ~ minecraft:lava run scoreboard players set @s automate_lava_check 1
execute as @e[type=armor_stand,tag=automate_furnace] at @s unless block ~ ~-1 ~ minecraft:lava run scoreboard players set @s automate_lava_check 0
execute as @e[type=armor_stand,tag=automate_furnace,scores={automate_lava_check=1}] at @s if data block ~ ~ ~ Items[{Slot:0b}] run function automate:fuel/automate_smelt_progress

# Check for specific furnace types
execute as @e[type=armor_stand,tag=automate_furnace] at @s if block ~ ~ ~ furnace run tag @s add automate_regular_furnace
execute as @e[type=armor_stand,tag=automate_furnace] at @s if block ~ ~ ~ blast_furnace run tag @s add automate_blast_furnace
execute as @e[type=armor_stand,tag=automate_furnace] at @s if block ~ ~ ~ smoker run tag @s add automate_smoker

# Place a barrier block in the fuel slot of the furnace
execute as @e[type=armor_stand,tag=automate_furnace] at @s if block ~ ~ ~ furnace[lit=true] run data modify block ~ ~ ~ Items[{Slot:1b}] set value {id:"minecraft:barrier",count:1b}
execute as @e[type=armor_stand,tag=automate_furnace] at @s if block ~ ~ ~ blast_furnace[lit=true] run data modify block ~ ~ ~ Items[{Slot:1b}] set value {id:"minecraft:barrier",count:1b}
execute as @e[type=armor_stand,tag=automate_furnace] at @s if block ~ ~ ~ smoker[lit=true] run data modify block ~ ~ ~ Items[{Slot:1b}] set value {id:"minecraft:barrier",count:1b}

# Visually update the furnace block to appear fully lit
execute as @e[type=armor_stand,tag=automate_furnace] at @s if block ~ ~ ~ furnace[lit=true] run setblock ~ ~ ~ furnace[lit=true]
execute as @e[type=armor_stand,tag=automate_furnace] at @s if block ~ ~ ~ blast_furnace[lit=true] run setblock ~ ~ ~ blast_furnace[lit=true]
execute as @e[type=armor_stand,tag=automate_furnace] at @s if block ~ ~ ~ smoker[lit=true] run setblock ~ ~ ~ smoker[lit=true]
