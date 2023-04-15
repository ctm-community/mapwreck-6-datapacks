data modify entity @s Owner set from entity @p UUID

data modify entity @s CustomName set from storage pear:wolf_name data

tag @s remove pear.new

scoreboard players set @s co_send -7
scoreboard players set @s co_y 4

function motion:motion/push

effect give @s jump_boost 120 2 true
effect give @s speed 120 1 true
effect give @s strength 120 1 true
