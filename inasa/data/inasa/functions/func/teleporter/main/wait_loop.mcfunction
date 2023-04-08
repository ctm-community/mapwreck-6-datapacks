
execute as @e[type=marker,tag=inasa.teleporter.wait_load] at @s if block ~ ~ ~ bedrock run function inasa:func/teleporter/main/loaded
execute as @e[type=marker,tag=inasa.teleporter.wait_load] at @s unless block ~ ~ ~ structure_block run kill @s

execute if entity @e[type=marker,tag=inasa.teleporter.wait_load] run schedule function inasa:func/teleporter/main/wait_loop 1t
