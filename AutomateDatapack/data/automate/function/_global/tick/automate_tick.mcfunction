# Run the main function
execute run function automate:_global/tick/automate_block_xyz
execute run function automate:_global/tick/automate_global_scoreboards_tick
execute run function automate:fuel/automate_smelt_main
execute run function automate:fuel/automate_check_furnaces
execute run function automate:player/automate_player_enhancements

scoreboard players add @e[tag=automate_furnace] automate_timer 1

execute as @e[tag=automate_furnace] if score @s automate_timer matches 100.. run function automate:fuel/automate_set_cooktime_effect
execute as @e[tag=automate_furnace] if score @s automate_timer matches 100.. run scoreboard players set @s automate_timer 0
