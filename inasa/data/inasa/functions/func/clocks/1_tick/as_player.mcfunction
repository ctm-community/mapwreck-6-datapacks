
execute if score @s give_objectives matches 1.. run function inasa:func/place_objective_chest
execute if score @s give_dev_items matches 1.. run function inasa:func/place_dev_item_chest
execute if score @s devroom matches 1.. run function inasa:func/items/dev_port/tp/dev_room/tp
execute if score @s updown_switch matches 1.. run function inasa:func/items/updown_switch/toggle

execute if score @s inasa.coas matches 1.. run function inasa:func/items/clicked

execute if score @s[x_rotation=90] switch matches 1 run gamemode creative @s
execute if score @s[x_rotation=-90] switch matches 1 run gamemode spectator @s
