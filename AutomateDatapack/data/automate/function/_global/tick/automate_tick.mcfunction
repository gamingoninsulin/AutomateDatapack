# Run the main function
execute run function automate:_global/tick/automate_block_xyz
execute run function automate:_global/tick/automate_global_scoreboards_tick
execute run function automate:fuel/automate_smelt_main
execute run function automate:fuel/automate_check_furnaces
execute run function automate:player/automate_player_enhancements
execute run function automate:liquid/water/automate_cauldron_liquid
execute run function automate:liquid/lava/automate_cauldron_liquid

execute if score #tick automate_tick matches 0 run function automate:_global/tick/automate_block_xyz
