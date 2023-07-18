recipe take @s *

function simple_blocks:give/persistent
# execute if score @s simple_blocks.crafting_state matches 0 run function simple_blocks:give/crafting
execute if score @s simple_blocks.crafting_state matches 1 run function simple_blocks:give/crafting_table
# execute if score @s simple_blocks.crafting_state matches 2 run function simple_blocks:give/stonecutter
# execute if score @s simple_blocks.crafting_state matches 3 run function simple_blocks:give/smithing_table
# execute if score @s simple_blocks.crafting_state matches 4 run function simple_blocks:give/campfire
execute if score @s simple_blocks.crafting_state matches 5 run function simple_blocks:give/smoker
execute if score @s simple_blocks.crafting_state matches 6 run function simple_blocks:give/blast_furnace
execute if score @s simple_blocks.crafting_state matches 7 run function simple_blocks:give/furnace