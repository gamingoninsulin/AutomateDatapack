# Slow cooking effect every 100 ticks (5 seconds)
execute if score @s automate_timer matches 100.. run function automate:fuel/automate_set_cooktime_effect

# Reset timer after 100 ticks
execute if score @s automate_timer matches 100.. run scoreboard players set @s automate_timer 0


# Visual and audio feedback
particle flame ~ ~-0.3 ~-0.3 0.0 -0.1 0.0 0.01 6

# Increment a random counter
scoreboard objectives add automate_random dummy
scoreboard players add @s automate_random 1
execute if score @s automate_random matches 100.. run scoreboard players set @s automate_random 0

# Increment a sound timer
scoreboard objectives add automate_sound_timer dummy
scoreboard players add @s automate_sound_timer 1

# Play sounds less frequently and at lower volumes
execute if score @s automate_sound_timer matches 100 run playsound block.furnace.fire_crackle block @a[distance=..10] ~ ~ ~ 1 1.2
execute if score @s automate_sound_timer matches 200 run playsound block.fire.ambient block @a[distance=..10] ~ ~ ~ 1 1

# Reset timer after 200 ticks (10 seconds)
execute if score @s automate_sound_timer matches 200.. run scoreboard players set @s automate_sound_timer 0
