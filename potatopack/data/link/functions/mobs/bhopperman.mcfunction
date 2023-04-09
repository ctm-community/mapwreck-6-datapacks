#happens when bhopper is near player

#damage player
execute if score 5hz gremloop matches 2 run damage @a[distance=..3,limit=1,sort=nearest] 1.8 link:moo by @s

execute if score 5hz gremloop matches 2 unless entity @a[distance=..5,limit=1,sort=nearest] run tag @s remove angry

#cooley motion
execute if score 5hz gremloop matches 1 run scoreboard players set @s co_send 4
execute if score 5hz gremloop matches 1 run scoreboard players set @s co_yaw 4
execute if score 5hz gremloop matches 1 run function motion:motion/push

#hopping
execute if score 5hz gremloop matches 1 run data modify entity @s Motion[1] set value 1d
execute if score 5hz gremloop matches 2 run data modify entity @s Motion[1] set value -1d