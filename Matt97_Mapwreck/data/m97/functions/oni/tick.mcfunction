

execute if entity @s[type=bee] if entity @p[distance=..5] run execute unless block ~ ~-1.4 ~ #m97:no_hitbox if block ~ ~-1 ~ #m97:no_hitbox if block ~ ~ ~ #m97:no_hitbox run function m97:oni/oni_form

execute as @s[type=bee] unless block ~ ~-0.5 ~ #m97:no_hitbox run effect give @s levitation 1 0 true

execute as @s[type=bee] facing ^ ^ ^1 run particle minecraft:cloud ^ ^-0.2 ^-0.5 0.2 0.2 0.2 0 5 force


execute if entity @s[type=zombie] if entity @p[distance=8..] run function m97:oni/smoke_form




#particle minecraft:smoke ~ ~1 ~ 0.3 0.3 0.3 0 10 force


execute if entity @s[type=bee] on passengers run teleport @s ~ ~ ~ ~ 0

scoreboard players add @s[type=bee] m97_despawn_timer 1
kill @s[scores={m97_despawn_timer=3000..}]

