# Make a check every 17 ticks
schedule function ld:check 17t replace

# Check levers
execute unless score pulled_lever_1 value matches 1 if block -62 93 59 minecraft:redstone_lamp[lit=true] run scoreboard players set pulled_lever_1 value 1
execute unless score pulled_lever_2 value matches 1 if block -80 117 54 minecraft:redstone_lamp[lit=true] run scoreboard players set pulled_lever_2 value 1

# Check if we're done with the replacement
execute if score pulled_lever_1 value matches 1 unless score finished_lever_1 value matches 1 unless block -77 72 52 minecraft:lava run scoreboard players set finished_lever_1 value 1
execute if score pulled_lever_2 value matches 1 unless score finished_lever_2 value matches 1 unless block -89 70 47 minecraft:lava unless block -92 70 53 minecraft:reinforced_deepslate run scoreboard players set finished_lever_2 value 1

# Replace the lava
execute if score pulled_lever_1 value matches 1 unless score finished_lever_1 value matches 1 run fill -82 73 61 -70 70 47 minecraft:air replace minecraft:lava
execute if score pulled_lever_2 value matches 1 unless score finished_lever_2 value matches 1 run fill -91 72 53 -93 70 53 minecraft:air replace minecraft:reinforced_deepslate
execute if score pulled_lever_2 value matches 1 unless score finished_lever_2 value matches 1 run fill -90 73 52 -94 69 52 minecraft:air replace minecraft:lava

# Print message
execute if score pulled_lever_1 value matches 1 unless score printed_lever_1 value matches 1 run tellraw @a [{"text":"=","bold":true,"color":"#000000"},{"text":"=","bold":true,"color":"#ccad12"},{"text":"=","bold":true,"color":"#000000"},{"text":"=","bold":true,"color":"#ccad12"},{"text":"[","bold":true,"color":"#000000"},{"text":"Security System Alpha Disabled","bold":true,"color":"#8c8b87"},{"text":"]","bold":true,"color":"#000000"},{"text":"=","bold":true,"color":"#ccad12"},{"text":"=","bold":true,"color":"#000000"},{"text":"=","bold":true,"color":"#ccad12"},{"text":"=","bold":true,"color":"#000000"}]
execute if score pulled_lever_1 value matches 1 unless score printed_lever_1 value matches 1 run execute as @a at @s run playsound minecraft:entity.iron_golem.death player @s ~ ~ ~ 1 1.3
execute if score pulled_lever_1 value matches 1 unless score printed_lever_1 value matches 1 run scoreboard players set printed_lever_1 value 1

execute if score pulled_lever_2 value matches 1 unless score printed_lever_2 value matches 1 run tellraw @a [{"text":"=","bold":true,"color":"#000000"},{"text":"=","bold":true,"color":"#ccad12"},{"text":"=","bold":true,"color":"#000000"},{"text":"=","bold":true,"color":"#ccad12"},{"text":"[","bold":true,"color":"#000000"},{"text":"Security System Gamma Disabled","bold":true,"color":"#8c8b87"},{"text":"]","bold":true,"color":"#000000"},{"text":"=","bold":true,"color":"#ccad12"},{"text":"=","bold":true,"color":"#000000"},{"text":"=","bold":true,"color":"#ccad12"},{"text":"=","bold":true,"color":"#000000"}]
execute if score pulled_lever_2 value matches 1 unless score printed_lever_2 value matches 1 run execute as @a at @s run playsound minecraft:entity.iron_golem.death player @s ~ ~ ~ 1 1.3
execute if score pulled_lever_2 value matches 1 unless score printed_lever_2 value matches 1 run scoreboard players set printed_lever_2 value 1
