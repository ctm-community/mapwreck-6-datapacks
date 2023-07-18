# execute if score @s simple_blocks.crafting_state matches 0 run function simple_blocks:take/crafting
execute if score @s simple_blocks.crafting_state matches 1 run function simple_blocks:take/crafting_table
# execute if score @s simple_blocks.crafting_state matches 2 run function simple_blocks:take/stonecutter
# execute if score @s simple_blocks.crafting_state matches 3 run function simple_blocks:take/smithing_table
# execute if score @s simple_blocks.crafting_state matches 4 run function simple_blocks:take/campfire
execute if score @s simple_blocks.crafting_state matches 5 run function simple_blocks:take/smoker
execute if score @s simple_blocks.crafting_state matches 6 run function simple_blocks:take/blast_furnace
execute if score @s simple_blocks.crafting_state matches 7 run function simple_blocks:take/furnace

scoreboard players set @s simple_blocks.crafting_state -1
scoreboard players reset @s simple_blocks.pitch
scoreboard players reset @s simple_blocks.yaw