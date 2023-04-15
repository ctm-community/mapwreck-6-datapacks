scoreboard players set $strength delta.api.launch 8000
execute as @s at @s rotated ~ ~-45 run function delta:api/launch_looking

scoreboard players set @s ca.delta.cooldown 4

execute as @e[type=#cartographer_core:hostile,distance=..5.5,nbt=!{HurtTime:0s}] at @s run function pear:item_effects/sprinter/melee

playsound minecraft:entity.horse.gallop player @a ~ ~ ~ 0.9 1.5
particle minecraft:poof ~ ~0.5 ~ 0 0 0 0.05 10 normal