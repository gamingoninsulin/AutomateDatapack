# Define tags for input and output containers
tag @a add output_input_container

# run function slabcrafting:init_mesage
execute at @a run function slabcrafting:init_mesage

# playsound minecraft:entity.player.levelup.
execute if dimension minecraft:overworld run playsound minecraft:entity.player.levelup master @a ~ ~ ~ 1 1