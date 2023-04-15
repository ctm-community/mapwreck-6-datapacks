playsound minecraft:delta.entity.generic.explode block @a ~ ~ ~ 1 0.5


execute as @e[type=#cartographer_core:hostile,distance=..5.2] at @s run function pear:item_effects/phd/entity

execute positioned ~ ~0.15 ~ run function pear:item_effects/phd/vfx

tag @s remove pear.phd_active