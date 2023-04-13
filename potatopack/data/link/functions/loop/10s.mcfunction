#All functions that activate every 10s go here

execute as @a at @s run function link:loop/player10s
execute as @e[type=!player] at @s run function link:loop/mob10s

kill @e[x=0,y=-600,z=0,distance=..2]