scoreboard players add @s automate_sound_timer 1
execute if score @s automate_sound_timer matches 18.. run playsound minecraft:item.bucket.empty master @a[distance=..10] ~ ~ ~ .05 1.2
execute if score @s automate_sound_timer matches 18.. run scoreboard players set @s automate_sound_timer 0

# debug
# tellraw @a {"text":"automate_playsound.mcfunction"}