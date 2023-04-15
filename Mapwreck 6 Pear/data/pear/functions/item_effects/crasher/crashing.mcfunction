execute unless score @s pear.crash_time matches 1.. unless block ~ ~-0.1 ~ #cartographer_core:can_raycast if entity @s[nbt={OnGround:1b}] run function pear:item_effects/crasher/landed

execute if score @s pear.crash_time matches 1.. run scoreboard players remove @s pear.crash_time 1