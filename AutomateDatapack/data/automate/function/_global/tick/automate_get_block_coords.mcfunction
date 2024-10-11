# Debug message
tellraw @a {"text":"autoamte_get_block_coords.mcfunction executed", "color":"green"}

# Store the coordinates of the placed block
execute align xyz positioned ~0.5 ~0.5 ~0.5 run summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Tags:["automate_saved_coords"]}
execute as @e[type=armor_stand,tag=automate_saved_coords,limit=1,sort=nearest] store result score @s automate_x run data get entity @s Pos[0]
execute as @e[type=armor_stand,tag=automate_saved_coords,limit=1,sort=nearest] store result score @s automate_y run data get entity @s Pos[1]
execute as @e[type=armor_stand,tag=automate_saved_coords,limit=1,sort=nearest] store result score @s automate_z run data get entity @s Pos[2]

# Output coordinates to chat (optional, for debugging)
#tellraw @a [{"text":"Block placed at: "},{"score":{"name":"@e[type=armor_stand,tag=automate_saved_coords,limit=1,sort=nearest]","objective":"automate_x"}},{"text":", "},{"score":{"name":"@e[type=armor_stand,tag=automate_saved_coords,limit=1,sort=nearest]","objective":"automate_y"}},{"text":", "},{"score":{"name":"@e[type=armor_stand,tag=automate_saved_coords,limit=1,sort=nearest]","objective":"automate_z"}}]
