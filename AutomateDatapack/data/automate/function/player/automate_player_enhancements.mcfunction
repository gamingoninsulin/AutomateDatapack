# These give a sting damage to the player if they are on a bee hive or bee nest.
execute as @a at @p if block ~ ~-1 ~ minecraft:beehive run damage @s 1 minecraft:sting
execute as @a at @p if block ~ ~-1 ~ minecraft:bee_nest run damage @s 1 minecraft:sting

# These give a on_fire damage on the block the player is on a furnace type block (e.g. a funcace, blast, etc)
execute as @a at @p if block ~ ~-1 ~ minecraft:furnace[lit=true] run damage @s 1 minecraft:on_fire
execute as @a at @p if block ~ ~-1 ~ minecraft:blast_furnace[lit=true] run damage @s 1 minecraft:on_fire
execute as @a at @p if block ~ ~-1 ~ minecraft:smoker[lit=true] run damage @s 1 minecraft:on_fire

# These give a on_fire damage to the player if they are on a candles and candle cakes.
execute as @a at @p if block ~ ~ ~ #minecraft:candle_cakes[lit=true] run damage @s 1 minecraft:on_fire
execute as @a at @p if block ~ ~ ~ #minecraft:candles[lit=true] run damage @s 0.5 minecraft:on_fire

# These give a on_fire damage to the player if they are on a torch.
execute as @a at @p if block ~ ~ ~ minecraft:soul_torch run damage @s 1 minecraft:on_fire
execute as @a at @p if block ~ ~ ~ minecraft:soul_wall_torch run damage @s 1 minecraft:on_fire
execute as @a at @p if block ~ ~ ~ minecraft:wall_torch run damage @s 1 minecraft:on_fire
execute as @a at @p if block ~ ~ ~ minecraft:torch run damage @s 1 minecraft:on_fire

# Execute the hurt function on the block the player is on and the block must be a stonecutter and give health.
execute as @a at @p if block ~ ~ ~ minecraft:stonecutter run damage @s 1 minecraft:generic