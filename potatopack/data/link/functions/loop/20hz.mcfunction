#Runs functions at the hz described in the file

#resets
scoreboard players set cicadascream temp 0

#Area 16 adventure mode failsafe
gamemode survival @a[gamemode=adventure,tag=wasina16boss,tag=!ina16boss]
tag @a[gamemode=survival] remove wasina16boss
tag @a remove ina16boss

#main loops
execute if entity @a[x=-262,y=121,z=160,dx=150,dy=100,dz=160,limit=1] run function link:area16/tick
execute as @a at @s run function link:loop/player20hz

#mob loop
execute as @e[tag=custom20hz,type=!player] at @s run function link:mobs/custom20hz

