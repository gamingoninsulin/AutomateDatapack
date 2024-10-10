# Debug message
#tellraw @a {"text":"autoamte_check_furnaces.mcfunction executed", "color":"green"}

execute as @e[type=armor_stand,tag=automate_furnace] at @s if block ~ ~-1 ~ lava[level=0] run scoreboard players set @s automate_lava_check 1
execute as @e[type=armor_stand,tag=automate_furnace] at @s unless block ~ ~-1 ~ lava[level=0] run scoreboard players set @s automate_lava_check 0
execute as @e[type=armor_stand,tag=automate_furnace,scores={automate_lava_check=1}] at @s run function automate:fuel/automate_smelt_progress


#kill @e[type=item_frame,tag=automate_furnace]