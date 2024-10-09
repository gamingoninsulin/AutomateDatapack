# execute the hurt function on the the block the player is on and the block must be a stonecutter adn give  health.
execute as @a at @p if block ~ ~ ~ minecraft:stonecutter run damage @s 1 minecraft:generic


# these give a on_fire damage on the block the player is on a furnace type block (e.g. a funcace, blast, etc)
execute as @a at @p if block ~ ~-1 ~ minecraft:furnace[lit=true] run damage @s 1 minecraft:on_fire
execute as @a at @p if block ~ ~-1 ~ minecraft:blast_furnace[lit=true] run damage @s 1 minecraft:on_fire
execute as @a at @p if block ~ ~-1 ~ minecraft:smoker[lit=true] run damage @s 1 minecraft:on_fire


# these give a sting damage to the player if they are on a bee hive or bee nest.
execute as @a at @p if block ~ ~-1 ~ minecraft:beehive run damage @s 0.3 minecraft:sting
execute as @a at @p if block ~ ~-1 ~ minecraft:bee_nest run damage @s 0.3 minecraft:sting


# these give a on_fire damage to the player if they are on a torch.
execute as @a at @p if block ~ ~ ~ minecraft:soul_torch run damage @s 1 minecraft:on_fire
execute as @a at @p if block ~ ~ ~ minecraft:soul_wall_torch run damage @s 1 minecraft:on_fire
execute as @a at @p if block ~ ~ ~ minecraft:wall_torch run damage @s 1 minecraft:on_fire
execute as @a at @p if block ~ ~ ~ minecraft:torch run damage @s 0.5 minecraft:on_fire


# these give a on_fire damage to the player if they are on a candle cake.
execute as @a at @p if block ~ ~ ~ minecraft:candle_cake[lit=true] run damage @s 0.5 minecraft:on_fire
execute as @a at @p if block ~ ~ ~ minecraft:white_candle_cake[lit=true] run damage @s 0.5 minecraft:on_fire
execute as @a at @p if block ~ ~ ~ minecraft:orange_candle_cake[lit=true] run damage @s 0.5 minecraft:on_fire
execute as @a at @p if block ~ ~ ~ minecraft:magenta_candle_cake[lit=true] run damage @s 0.5 minecraft:on_fire
execute as @a at @p if block ~ ~ ~ minecraft:light_blue_candle_cake[lit=true] run damage @s 0.5 minecraft:on_fire
execute as @a at @p if block ~ ~ ~ minecraft:yellow_candle_cake[lit=true] run damage @s 0.5 minecraft:on_fire
execute as @a at @p if block ~ ~ ~ minecraft:lime_candle_cake[lit=true] run damage @s 0.5 minecraft:on_fire
execute as @a at @p if block ~ ~ ~ minecraft:pink_candle_cake[lit=true] run damage @s 0.5 minecraft:on_fire
execute as @a at @p if block ~ ~ ~ minecraft:gray_candle_cake[lit=true] run damage @s 0.5 minecraft:on_fire
execute as @a at @p if block ~ ~ ~ minecraft:light_gray_candle_cake[lit=true] run damage @s 0.5 minecraft:on_fire
execute as @a at @p if block ~ ~ ~ minecraft:cyan_candle_cake[lit=true] run damage @s 0.5 minecraft:on_fire
execute as @a at @p if block ~ ~ ~ minecraft:purple_candle_cake[lit=true] run damage @s 0.5 minecraft:on_fire
execute as @a at @p if block ~ ~ ~ minecraft:blue_candle_cake[lit=true] run damage @s 0.5 minecraft:on_fire
execute as @a at @p if block ~ ~ ~ minecraft:brown_candle_cake[lit=true] run damage @s 0.5 minecraft:on_fire
execute as @a at @p if block ~ ~ ~ minecraft:green_candle_cake[lit=true] run damage @s 0.5 minecraft:on_fire
execute as @a at @p if block ~ ~ ~ minecraft:red_candle_cake[lit=true] run damage @s 0.5 minecraft:on_fire
execute as @a at @p if block ~ ~ ~ minecraft:black_candle_cake[lit=true] run damage @s 0.5 minecraft:on_fire

# these give a on_fire damage to the player if they are on a candle.
execute as @a at @p if block ~ ~ ~ minecraft:candle[lit=true] run damage @s 0.5 minecraft:on_fire
execute as @a at @p if block ~ ~ ~ minecraft:white_candle[lit=true] run damage @s 0.5 minecraft:on_fire
execute as @a at @p if block ~ ~ ~ minecraft:orange_candle[lit=true] run damage @s 0.5 minecraft:on_fire
execute as @a at @p if block ~ ~ ~ minecraft:magenta_candle[lit=true] run damage @s 0.5 minecraft:on_fire
execute as @a at @p if block ~ ~ ~ minecraft:light_blue_candle[lit=true] run damage @s 0.5 minecraft:on_fire
execute as @a at @p if block ~ ~ ~ minecraft:yellow_candle[lit=true] run damage @s 0.5 minecraft:on_fire
execute as @a at @p if block ~ ~ ~ minecraft:lime_candle[lit=true] run damage @s 0.5 minecraft:on_fire
execute as @a at @p if block ~ ~ ~ minecraft:pink_candle[lit=true] run damage @s 0.5 minecraft:on_fire
execute as @a at @p if block ~ ~ ~ minecraft:gray_candle[lit=true] run damage @s 0.5 minecraft:on_fire
execute as @a at @p if block ~ ~ ~ minecraft:light_gray_candle[lit=true] run damage @s 0.5 minecraft:on_fire
execute as @a at @p if block ~ ~ ~ minecraft:cyan_candle[lit=true] run damage @s 0.5 minecraft:on_fire
execute as @a at @p if block ~ ~ ~ minecraft:purple_candle[lit=true] run damage @s 0.5 minecraft:on_fire
execute as @a at @p if block ~ ~ ~ minecraft:blue_candle[lit=true] run damage @s 0.5 minecraft:on_fire
execute as @a at @p if block ~ ~ ~ minecraft:brown_candle[lit=true] run damage @s 0.5 minecraft:on_fire
execute as @a at @p if block ~ ~ ~ minecraft:green_candle[lit=true] run damage @s 0.5 minecraft:on_fire
execute as @a at @p if block ~ ~ ~ minecraft:red_candle[lit=true] run damage @s 0.5 minecraft:on_fire
execute as @a at @p if block ~ ~ ~ minecraft:black_candle[lit=true] run damage @s 0.5 minecraft:on_fire
