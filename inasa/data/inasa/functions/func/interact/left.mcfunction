
execute as @e[type=interaction,distance=..7,tag=inasa.interaction_any] at @s run function inasa:func/interact/check_left

advancement revoke @s only inasa:interact/left
