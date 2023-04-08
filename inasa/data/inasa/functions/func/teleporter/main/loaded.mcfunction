
tp @s ~ ~1 ~
execute at @s run data modify storage inasa:storage sudo_root.locations.player_tp.main_tp set from entity @s Pos
tp @s ~ ~-1 ~

execute if entity @s[tag=inasa.teleporter.south] positioned ~ ~ ~-3 run function inasa:func/teleporter/main/place_interactables
execute if entity @s[tag=inasa.teleporter.north] positioned ~ ~ ~3 run function inasa:func/teleporter/main/place_interactables
execute if entity @s[tag=inasa.teleporter.west] positioned ~3 ~ ~ run function inasa:func/teleporter/main/place_interactables
execute if entity @s[tag=inasa.teleporter.east] positioned ~-3 ~ ~ run function inasa:func/teleporter/main/place_interactables

execute if entity @s[tag=inasa.teleporter.south] positioned ~ ~ ~-3 run tag @e[type=interaction,distance=..2,limit=1,sort=nearest,tag=inasa.teleporter.main.interaction] add south
execute if entity @s[tag=inasa.teleporter.north] positioned ~ ~ ~3 run tag @e[type=interaction,distance=..2,limit=1,sort=nearest,tag=inasa.teleporter.main.interaction] add north
execute if entity @s[tag=inasa.teleporter.west] positioned ~3 ~ ~ run tag @e[type=interaction,distance=..2,limit=1,sort=nearest,tag=inasa.teleporter.main.interaction] add west
execute if entity @s[tag=inasa.teleporter.east] positioned ~-3 ~ ~ run tag @e[type=interaction,distance=..2,limit=1,sort=nearest,tag=inasa.teleporter.main.interaction] add east


kill @s
