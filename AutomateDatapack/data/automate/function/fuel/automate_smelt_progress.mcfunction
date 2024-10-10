#============================================================================================================================

# Increment timer
scoreboard players add @s automate_cook_timer 1

# Slow cooking effect
execute if entity @s[tag=automate_regular_furnace] if score @s automate_cook_timer matches 200.. run function automate:fuel/automate_set_cooktime_effect
execute if entity @s[tag=automate_blast_furnace] if score @s automate_cook_timer matches 100.. run function automate:fuel/automate_set_cooktime_effect
execute if entity @s[tag=automate_smoker] if score @s automate_cook_timer matches 100.. run function automate:fuel/automate_set_cooktime_effect

# Reset cook timer
execute if entity @s[tag=automate_regular_furnace] if score @s automate_cook_timer matches 200.. run scoreboard players set @s automate_cook_timer 0
execute if entity @s[tag=automate_blast_furnace] if score @s automate_cook_timer matches 100.. run scoreboard players set @s automate_cook_timer 0
execute if entity @s[tag=automate_smoker] if score @s automate_cook_timer matches 100.. run scoreboard players set @s automate_cook_timer 0

# Check if item is still in furnace, if not, stop the process
execute unless data block ~ ~ ~ Items[{Slot:0b}] run tag @s remove automate_cooking

#============================================================================================================================
# Increment a random counter
scoreboard objectives add automate_random dummy
scoreboard players add @s automate_random 1

# Reset timer after 100 ticks
execute if score @s automate_timer matches 100.. run scoreboard players set @s automate_timer 0
execute if score @s automate_random matches 100.. run scoreboard players set @s automate_random 0

#============================================================================================================================

# Pulsing mechanism for visual feedback
scoreboard players add @s automate_pulse 1
scoreboard players set @s[scores={automate_pulse=20..}] automate_pulse 0

# Increment a sound timer
scoreboard objectives add automate_sound_timer dummy
scoreboard players add @s automate_sound_timer 1

# Play sounds less frequently and at lower volumes
execute if score @s automate_sound_timer matches 100 run playsound block.furnace.fire_crackle block @a[distance=..10] ~ ~ ~ 1 1.2
execute if score @s automate_sound_timer matches 200 run playsound block.fire.ambient block @a[distance=..10] ~ ~ ~ 1 1

# Visual and audio feedback
particle smoke ~ ~ ~ 0.0 -0.1 0.0 0.01 6

#============================================================================================================================

# Reset timer after 200 ticks (10 seconds)
execute if score @s automate_sound_timer matches 200.. run scoreboard players set @s automate_sound_timer 0

#============================================================================================================================

# Debug message
# tellraw @a {"text":"autoamte_smelt_progress.mcfunction executed", "color":"green"}

#============================================================================================================================
