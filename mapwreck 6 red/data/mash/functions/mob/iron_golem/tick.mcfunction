# anger
    scoreboard players add @s red.mobTimer 1
    execute if score @s red.mobTimer matches 10 run damage @s 0.0 minecraft:mob_attack by @p
# visual
    execute positioned ~ ~2.1 ~ run particle dust 1 1 1 2 ^ ^ ^0.2 0.1 0.1 0.1 0.2 2 force
    particle dust 1 1 1 2 ~ ~2 ~ 0.1 0.1 0.2 0.2 3 force