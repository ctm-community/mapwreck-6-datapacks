execute if entity @p[distance=..1,gamemode=survival] run data modify entity @s Brain.memories."minecraft:liked_player".value set from entity @p UUID
execute if entity @p[distance=..1,gamemode=survival] run tag @s add invitarget
execute unless entity @p[distance=..1,gamemode=survival] positioned ^ ^ ^0.1 if block ~ ~ ~ #general:semisolid run function plunge:mobs/allay/find