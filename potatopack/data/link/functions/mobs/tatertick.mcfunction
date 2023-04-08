#happens 20hz on that potato mob
scoreboard players add @s temp 0
scoreboard players add @s[scores={temp=..23}] temp 1
scoreboard players add @s[scores={temp=25}] temp 1
scoreboard players add @s[scores={temp=24},tag=popup] temp 1
tag @s[tag=popup] remove popup


execute as @s[scores={temp=1}] at @s run scoreboard players set n temp 100
execute as @s[scores={temp=1}] at @s run function link:mobs/burrowloop

execute as @s[scores={temp=1}] run data merge entity @s {NoAI:1b}
execute as @s[scores={temp=1..23}] at @s run tp @s ~ ~-0.07 ~
execute as @s[scores={temp=1..23}] run playsound block.rooted_dirt.break ambient @a ~ ~ ~ 1 0.5
execute as @s[scores={temp=1..23}] at @s run particle block dirt ~ ~ ~ 0.4 1 0.4 0 2 normal

execute as @s[scores={temp=..24}] if entity @p[gamemode=!creative,gamemode=!spectator,distance=..7,predicate=!link:sneaking] at @s positioned ~-2 ~-2 ~-2 run tag @e[dx=4,dy=4,dz=4,type=husk,tag=tater] add popup

execute as @s[scores={temp=25}] run data merge entity @s {Motion:[0.0,0.6,0.0],NoAI:0b}
execute as @s[scores={temp=25}] run playsound block.rooted_dirt.break ambient @a ~ ~ ~ 1 1
execute as @s[scores={temp=25}] run particle item potato ~ ~1 ~ 0.8 1 0.8 0 25

#execute as @s[scores={temp=25..}] run particle sneeze ~ ~ ~ 0.4 1 0.4 0 2 normal

execute as @s[scores={temp=25..}] unless entity @p[gamemode=!creative,gamemode=!spectator,distance=..16] run scoreboard players set @s temp 0