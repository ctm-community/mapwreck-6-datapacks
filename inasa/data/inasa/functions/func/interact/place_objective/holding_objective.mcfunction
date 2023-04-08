
scoreboard players set $objective_number inasa.master 0
execute store result score $objective_number inasa.master run data get storage inasa:master sudo_root.held_item.tag.objective

execute if score $objective_number inasa.master matches 1 if entity @e[type=interaction,tag=white_wool,tag=inasa.object] run tag @s add inasa.wool_already_placed
execute if score $objective_number inasa.master matches 2 if entity @e[type=interaction,tag=orange_wool,tag=inasa.object] run tag @s add inasa.wool_already_placed
execute if score $objective_number inasa.master matches 3 if entity @e[type=interaction,tag=magenta_wool,tag=inasa.object] run tag @s add inasa.wool_already_placed
execute if score $objective_number inasa.master matches 4 if entity @e[type=interaction,tag=light_blue_wool,tag=inasa.object] run tag @s add inasa.wool_already_placed
execute if score $objective_number inasa.master matches 5 if entity @e[type=interaction,tag=yellow_wool,tag=inasa.object] run tag @s add inasa.wool_already_placed
execute if score $objective_number inasa.master matches 6 if entity @e[type=interaction,tag=lime_wool,tag=inasa.object] run tag @s add inasa.wool_already_placed
execute if score $objective_number inasa.master matches 7 if entity @e[type=interaction,tag=pink_wool,tag=inasa.object] run tag @s add inasa.wool_already_placed
execute if score $objective_number inasa.master matches 8 if entity @e[type=interaction,tag=gray_wool,tag=inasa.object] run tag @s add inasa.wool_already_placed
execute if score $objective_number inasa.master matches 9 if entity @e[type=interaction,tag=light_gray_wool,tag=inasa.object] run tag @s add inasa.wool_already_placed
execute if score $objective_number inasa.master matches 10 if entity @e[type=interaction,tag=cyan_wool,tag=inasa.object] run tag @s add inasa.wool_already_placed
execute if score $objective_number inasa.master matches 11 if entity @e[type=interaction,tag=purple_wool,tag=inasa.object] run tag @s add inasa.wool_already_placed
execute if score $objective_number inasa.master matches 12 if entity @e[type=interaction,tag=blue_wool,tag=inasa.object] run tag @s add inasa.wool_already_placed
execute if score $objective_number inasa.master matches 13 if entity @e[type=interaction,tag=brown_wool,tag=inasa.object] run tag @s add inasa.wool_already_placed
execute if score $objective_number inasa.master matches 14 if entity @e[type=interaction,tag=green_wool,tag=inasa.object] run tag @s add inasa.wool_already_placed
execute if score $objective_number inasa.master matches 15 if entity @e[type=interaction,tag=red_wool,tag=inasa.object] run tag @s add inasa.wool_already_placed
execute if score $objective_number inasa.master matches 16 if entity @e[type=interaction,tag=black_wool,tag=inasa.object] run tag @s add inasa.wool_already_placed

execute unless entity @s[tag=inasa.wool_already_placed] if score $config.freeform_order inasa.master matches 0 run function inasa:func/interact/place_objective/handling/static
execute unless entity @s[tag=inasa.wool_already_placed] if score $config.freeform_order inasa.master matches 1 run function inasa:func/interact/place_objective/handling/freeform

execute if entity @s[tag=inasa.wool_already_placed] run function inasa:func/interact/place_objective/already_placed
tag @s remove inasa.wool_already_placed
