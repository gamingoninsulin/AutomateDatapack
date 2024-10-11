# Create scoreboards for storing coordinates
scoreboard objectives add automate_x dummy
scoreboard objectives add automate_y dummy
scoreboard objectives add automate_z dummy

scoreboard objectives add automate_lava_check dummy
scoreboard objectives add automate_pulse dummy
scoreboard objectives add automate_timer dummy
scoreboard objectives add automate_cook_timer dummy
scoreboard objectives add automate_cooldown dummy

# Increment timer
scoreboard players add @s automate_timer 1

# Increment a random counter
scoreboard objectives add automate_random dummy
scoreboard players add @s automate_random 1

# Increment a sound timer
scoreboard objectives add automate_sound_timer dummy
scoreboard players add @s automate_sound_timer 1

# Pulsing mechanism for visual feedback
scoreboard players add @s automate_pulse 1
scoreboard players set @s[scores={automate_pulse=20..}] automate_pulse 0


# Create a scoreboard for tracking placed blocks
scoreboard objectives add automate_placed_furnace minecraft.used:minecraft.furnace
scoreboard objectives add automate_placed_blast_furnace minecraft.used:minecraft.blast_furnace
scoreboard objectives add automate_placed_smoker minecraft.used:minecraft.smoker
scoreboard objectives add automate_placed_cauldron minecraft.used:minecraft.cauldron

# Set up tick function
schedule function automate:_global/tick/automate_tick 1t replace


#================================================================
# scoreboard list for automate datapack.
#================================================================
# furnaces list
#================================================================
# automate_placed_furnace
# automate_placed_blast_furnace
# automate_placed_smoker
# automate_placed_cauldron
#================================================================
# coordinate list
#================================================================
# automate_x
# automate_y
# automate_z
#================================================================
# gloabal list
#================================================================
# automate_pulse
# automate_lava_check
# automate_sound_timer
# automate_cook_timer
# automate_cooldown
# automate_random
# automate_timer
#================================================================
