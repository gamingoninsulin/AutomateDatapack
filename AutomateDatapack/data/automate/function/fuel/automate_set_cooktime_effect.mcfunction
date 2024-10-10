# Debug message
# tellraw @a {"text":"automate_check_furnaces.mcfunction executed", "color":"green"}

execute if block ~ ~ ~ furnace run data modify block ~ ~ ~ BurnTime set value 72000
execute if block ~ ~ ~ furnace run data modify block ~ ~ ~ CookTime set value 199s

execute if block ~ ~ ~ blast_furnace run data modify block ~ ~ ~ BurnTime set value 72000
execute if block ~ ~ ~ blast_furnace run data modify block ~ ~ ~ CookTime set value 99s

execute if block ~ ~ ~ smoker run data modify block ~ ~ ~ BurnTime set value 72000
execute if block ~ ~ ~ smoker run data modify block ~ ~ ~ CookTime set value 99s
