#######################################################################################################

# Define tags for input and output containers
# tag @s add output_input_container
tag @s add output_input_container

#######################################################################################################

# Check for input container (barrel, chest, or shulker box) to the left of the furnace
execute if block ~ ~ ~ #minecraft:output_input_contianer run function slabcrafting:smelt_type/transfer_input

# execute if block 0 65 45 minecraft:chest run function slabcrafting:smelt_type/transfer_input
# execute if block 0 65 45 minecraft:barrel run function slabcrafting:smelt_type/transfer_input
# execute if block 0 65 45 minecraft:ender_chest run function slabcrafting:smelt_type/transfer_input
# execute if block 0 65 45 minecraft:shulker_box run function slabcrafting:smelt_type/transfer_input
# execute if block 0 65 45 minecraft:red_shulker_box run function slabcrafting:smelt_type/transfer_input
# execute if block 0 65 45 minecraft:blue_shulker_box run function slabcrafting:smelt_type/transfer_input
# execute if block 0 65 45 minecraft:cyan_shulker_box run function slabcrafting:smelt_type/transfer_input
# execute if block 0 65 45 minecraft:gray_shulker_box run function slabcrafting:smelt_type/transfer_input
# execute if block 0 65 45 minecraft:lime_shulker_box run function slabcrafting:smelt_type/transfer_input
# execute if block 0 65 45 minecraft:pink_shulker_box run function slabcrafting:smelt_type/transfer_input
# execute if block 0 65 45 minecraft:brown_shulker_box run function slabcrafting:smelt_type/transfer_input
# execute if block 0 65 45 minecraft:green_shulker_box run function slabcrafting:smelt_type/transfer_input
# execute if block 0 65 45 minecraft:white_shulker_box run function slabcrafting:smelt_type/transfer_input
# execute if block 0 65 45 minecraft:orange_shulker_box run function slabcrafting:smelt_type/transfer_input
# execute if block 0 65 45 minecraft:purple_shulker_box run function slabcrafting:smelt_type/transfer_input

#######################################################################################################

# Check for output container to the right of the furnace
execute if block ~ ~ ~ #minecraft:output_input_contianer run function slabcrafting:smelt_type/transfer_output

# execute if block -2 65 45 minecraft:chest run function slabcrafting:smelt_type/transfer_output
# execute if block -2 65 45 minecraft:barrel run function slabcrafting:smelt_type/transfer_output
# execute if block -2 65 45 minecraft:ender_chest run function slabcrafting:smelt_type/transfer_output
# execute if block -2 65 45 minecraft:shulker_box run function slabcrafting:smelt_type/transfer_output
# execute if block -2 65 45 minecraft:red_shulker_box run function slabcrafting:smelt_type/transfer_output
# execute if block -2 65 45 minecraft:blue_shulker_box run function slabcrafting:smelt_type/transfer_output
# execute if block -2 65 45 minecraft:cyan_shulker_box run function slabcrafting:smelt_type/transfer_output
# execute if block -2 65 45 minecraft:gray_shulker_box run function slabcrafting:smelt_type/transfer_output
# execute if block -2 65 45 minecraft:lime_shulker_box run function slabcrafting:smelt_type/transfer_output
# execute if block -2 65 45 minecraft:pink_shulker_box run function slabcrafting:smelt_type/transfer_output
# execute if block -2 65 45 minecraft:brown_shulker_box run function slabcrafting:smelt_type/transfer_output
# execute if block -2 65 45 minecraft:green_shulker_box run function slabcrafting:smelt_type/transfer_output
# execute if block -2 65 45 minecraft:white_shulker_box run function slabcrafting:smelt_type/transfer_output
# execute if block -2 65 45 minecraft:orange_shulker_box run function slabcrafting:smelt_type/transfer_output
# execute if block -2 65 45 minecraft:purple_shulker_box run function slabcrafting:smelt_type/transfer_output

#######################################################################################################

# keeing the smelt_tpye block lit indefinitly if lava  is below it
# execute if block -1 65 45 minecraft:furnace[lit=false] if block -1 64 45 minecraft:lava run data merge block -1 65 45 {BurnTime:20000, CookTimeTotal:400, CustomName:'{"text":"Auto Furnace Turned ON

# keeping the smelt_type block off  if lava is not below it
# execute if block -1 65 45 minecraft:furnace unless block -1 64 45 minecraft:lava run data merge block -1 65 45 {BurnTime:0, CookTimeTotal:0, CustomName:'{"text":"Auto Furnace Turned OFF"}'}
execute if block ~ ~ ~ #minecraft:fuel_consumers run function slabcrafting:smelt_type/check_fuel

execute store result score #temp_x bsd_coord_x run data get storage slabcrafting:block_coords X
execute store result score #temp_y bsd_coord_y run data get storage slabcrafting:block_coords Y
execute store result score #temp_z bsd_coord_z run data get storage slabcrafting:block_coords Z

execute if score #temp_x bsd_coord_x = @s bsd_coord_x if score #temp_y bsd_coord_y = @s bsd_coord_y if score #temp_z bsd_coord_z = @s bsd_coord_z if block ~ ~ ~ #minecraft:fuel_consumers run function slabcrafting:smelt_type/check_fuel



#######################################################################################################

# keeing the smelt_tpye block lit indefinitly if lava  is below it
# execute if block -1 65 45 minecraft:blast_furnace[lit=false] if block -1 64 45 minecraft:lava run data merge block -1 65 45 {BurnTime:20000, CookTimeTotal:400, CustomName:'{"text":"Auto Blaster Turned ON"}'}

# keeping the smelt_type block off  if lava is not below it
# execute if block -1 65 45 minecraft:blast_furnace unless block -1 64 45 minecraft:lava run data merge block -1 65 45 {BurnTime:0, CookTimeTotal:0, CustomName:'{"text":"Auto Blaster Turned OFF"}'}

#######################################################################################################

# keeing the smelt_tpye block lit indefinitly if lava  is below it
# execute if block -1 65 45 minecraft:smoker[lit=false] if block -1 64 45 minecraft:lava run data merge block -1 65 45 {BurnTime:20000, CookTimeTotal:400, CustomName:'{"text":"Auto Smoker Turned ON"}'}

# keeping the smelt_type block off  if lava is not below it
# execute if block -1 65 45 minecraft:smoker unless block -1 64 45 minecraft:lava run data merge block -1 65 45 {BurnTime:0, CookTimeTotal:0, CustomName:'{"text":"Auto Smoker Turned OFF"}'}

#######################################################################################################
