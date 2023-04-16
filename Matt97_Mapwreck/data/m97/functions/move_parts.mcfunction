



scoreboard players operation m97_dummyPlayer m97_chain_id_number = @s m97_chain_id

execute as @e if score @s m97_chain_id = m97_dummyPlayer m97_chain_id_number run tag @s add this



execute if entity @s[tag=!m97_part1,tag=this] on passengers run teleport @s ~ ~ ~ ~ ~

execute if entity @s[tag=m97_part1,tag=this] at @s facing entity @e[tag=m97_part2,tag=this] feet positioned ^ ^ ^0.8 on passengers run teleport @s ~ ~ ~ facing ^ ^ ^1



execute if entity @s[tag=m97_part2] at @e[tag=m97_part1,tag=this] facing entity @s feet positioned ^ ^ ^0.75 run teleport @s ~ ~ ~ facing ^ ^ ^3
execute if entity @s[tag=m97_part3] at @e[tag=m97_part2,tag=this] facing entity @s feet positioned ^ ^ ^0.75 run teleport @s ~ ~ ~ facing ^ ^ ^3
execute if entity @s[tag=m97_part4] at @e[tag=m97_part3,tag=this] facing entity @s feet positioned ^ ^ ^0.75 run teleport @s ~ ~ ~ facing ^ ^ ^3
execute if entity @s[tag=m97_part5] at @e[tag=m97_part4,tag=this] facing entity @s feet positioned ^ ^ ^0.75 run teleport @s ~ ~ ~ facing ^ ^ ^3
execute if entity @s[tag=m97_part6] at @e[tag=m97_part5,tag=this] facing entity @s feet positioned ^ ^ ^0.75 run teleport @s ~ ~ ~ facing ^ ^ ^3



#execute if entity @s[tag=m97_part2] at @e[tag=m97_part1,tag=this] facing entity @s feet positioned ^ ^ ^0.8 run teleport @s ~ ~ ~ facing ^ ^ ^1
#execute if entity @s[tag=m97_part3] at @e[tag=m97_part2,tag=this] facing entity @s feet positioned ^ ^ ^0.8 run teleport @s ~ ~ ~ facing ^ ^ ^1
#execute if entity @s[tag=m97_part4] at @e[tag=m97_part3,tag=this] facing entity @s feet positioned ^ ^ ^0.8 run teleport @s ~ ~ ~ facing ^ ^ ^1
#execute if entity @s[tag=m97_part5] at @e[tag=m97_part4,tag=this] facing entity @s feet positioned ^ ^ ^0.8 run teleport @s ~ ~ ~ facing ^ ^ ^1
#execute if entity @s[tag=m97_part6] at @e[tag=m97_part5,tag=this] facing entity @s feet positioned ^ ^ ^0.8 run teleport @s ~ ~ ~ facing ^ ^ ^1

execute if entity @s[tag=m97_partV] at @e[tag=m97_part2,tag=this] facing entity @s feet run teleport @s ~ ~ ~ facing ^ ^ ^

tag @e remove this