execute if score @s simple_blocks.crafting_state matches 0 run function simple_blocks:take_recipes/crafting_shaped
execute if score @s simple_blocks.crafting_state matches 0 run function simple_blocks:take_recipes/crafting_shapeless_large
# execute if score @s simple_blocks.crafting_state matches 1 run function simple_blocks:take_recipes/crafting_shapeless_small
# execute if score @s simple_blocks.crafting_state matches 3 run function simple_blocks:take_recipes/stonecutting
execute if score @s simple_blocks.crafting_state matches 4 run function simple_blocks:take_recipes/smithing
# execute if score @s simple_blocks.crafting_state matches 5 run function simple_blocks:take_recipes/campfire_cooking
execute if score @s simple_blocks.crafting_state matches 6 run function simple_blocks:take_recipes/smoking
execute if score @s simple_blocks.crafting_state matches 7 run function simple_blocks:take_recipes/blasting
execute if score @s simple_blocks.crafting_state matches 8 run function simple_blocks:take_recipes/smelting

scoreboard players set @s simple_blocks.crafting_state -1
scoreboard players reset @s simple_blocks.pitch
scoreboard players reset @s simple_blocks.yaw