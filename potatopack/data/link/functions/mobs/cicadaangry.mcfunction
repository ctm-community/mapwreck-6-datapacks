#happens when a player gets close to a cicada and they go beserko

execute positioned ~-7 ~-7 ~-7 run tag @e[dx=14,dy=14,dz=14,tag=cicada] add angry
execute positioned ~-7 ~-7 ~-7 as @e[dx=14,dy=14,dz=14,tag=cicada] run data modify entity @s Attributes[{Name:"minecraft:generic.follow_range"}].Base set value 100d
execute positioned ~-7 ~-7 ~-7 as @e[dx=14,dy=14,dz=14,tag=cicada] at @s run particle angry_villager ~ ~2 ~