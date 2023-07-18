# Crafting ids are 0 through 7 in this order:

# execute if score @s simple_blocks.opened.crafting matches 1.. run function simple_blocks:give/crafting
execute if score @s simple_blocks.opened.crafting_table matches 1.. run function simple_blocks:give/crafting_table
# execute if score @s simple_blocks.opened.stonecutter matches 1.. run function simple_blocks:give/stonecutter
# execute if score @s simple_blocks.opened.smithing_table matches 1.. run function simple_blocks:give/smithing_table
# execute if score @s simple_blocks.opened.campfire matches 1.. run function simple_blocks:give/campfire
execute if score @s simple_blocks.opened.smoker matches 1.. run function simple_blocks:give/smoker
execute if score @s simple_blocks.opened.blast_furnace matches 1.. run function simple_blocks:give/blast_furnace
execute if score @s simple_blocks.opened.furnace matches 1.. run function simple_blocks:give/furnace

execute if score @s simple_blocks.crafting_state matches 0.. run function simple_blocks:check_rotation