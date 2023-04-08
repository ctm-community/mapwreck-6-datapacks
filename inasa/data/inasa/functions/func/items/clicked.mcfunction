
scoreboard players set @s inasa.coas 0

scoreboard players reset $held_dev_item inasa.master
execute store result score $held_dev_item inasa.master run data get entity @s SelectedItem.tag.inasa_dev_item

execute if score $held_dev_item inasa.master matches 4 run function inasa:func/items/night_vision/click
execute if score $held_dev_item inasa.master matches 5 run function inasa:func/items/updown_switch/click
execute if score $held_dev_item inasa.master matches 6 run function inasa:func/items/dev_port/click
execute if score $held_dev_item inasa.master matches 7 run function inasa:func/items/dev_room/click
