execute if score @s simple_blocks.opened.crafting_table matches 1.. run function simple_blocks:give/0_2
# execute if score @s simple_blocks.opened.crafting matches 1.. run function simple_blocks:give/1
execute if score @s simple_blocks.opened.stonecutter matches 1.. run function simple_blocks:give/3
execute if score @s simple_blocks.opened.smithing_table matches 1.. run function simple_blocks:give/4
# execute if score @s simple_blocks.opened.campfire matches 1.. run function simple_blocks:give/5
execute if score @s simple_blocks.opened.smoker matches 1.. run function simple_blocks:give/6
execute if score @s simple_blocks.opened.blast_furnace matches 1.. run function simple_blocks:give/7
execute if score @s simple_blocks.opened.furnace matches 1.. run function simple_blocks:give/8

execute if score @s simple_blocks.crafting_state matches 0.. run function simple_blocks:check_rotation