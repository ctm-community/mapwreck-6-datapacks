
scoreboard players set @s updown_switch 0

tag @s add inasa.toggle
execute if entity @s[tag=inasa.toggle] unless score @s switch matches -2147483648..2147483647 run function inasa:func/items/updown_switch/toggle/on
execute if entity @s[tag=inasa.toggle] if score @s switch matches 0 run function inasa:func/items/updown_switch/toggle/on
execute if entity @s[tag=inasa.toggle] if score @s switch matches 1 run function inasa:func/items/updown_switch/toggle/off
