

execute as @e[tag=m97_create,sort=random,limit=1] at @s run function m97:chain_creation

execute as @e at @s run function m97:mobs




execute if score m97_dummyPlayer m97_blink_timer matches ..0 run scoreboard players set m97_dummyPlayer m97_blink_timer 40
scoreboard players remove m97_dummyPlayer m97_blink_timer 1



