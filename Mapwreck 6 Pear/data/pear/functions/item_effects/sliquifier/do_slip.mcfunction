damage @s 4.0 cartographer_custom_statuses:status_damage

playsound minecraft:entity.shulker.ambient hostile @a ~ ~ ~ 0.75 1.5
playsound minecraft:item.honey_bottle.drink hostile @a ~ ~ ~ 0.6 1.5

particle minecraft:dust 0.75 0 0.75 5 ~ ~0.25 ~ 0.1 0.1 0.1 0 1 force

effect give @s slowness 1 3

tag @s add co_rotation_lock

scoreboard players set $rng_min bbl.rng 1
scoreboard players set $rng_max bbl.rng 4

function bb:lib/rng

execute if score $value bbl.rng matches 1..2 run scoreboard players set @s co_send -7
execute if score $value bbl.rng matches 3 run scoreboard players set @s co_yaw -7
execute if score $value bbl.rng matches 4 run scoreboard players set @s co_yaw 7

scoreboard players set @s co_y 1

function motion:motion/push

tag @s remove co_rotation_lock