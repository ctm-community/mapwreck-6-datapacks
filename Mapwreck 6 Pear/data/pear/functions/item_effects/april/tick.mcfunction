execute if score @s pear.april_time matches 45 run tag @s remove pear.taunting
scoreboard players remove @s pear.april_time 1

execute if score @s pear.april_time matches 1 run function pear:item_effects/april/cleanse
