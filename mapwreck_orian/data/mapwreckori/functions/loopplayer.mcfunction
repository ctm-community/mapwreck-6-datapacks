#player tick checks
execute as @s[gamemode=survival] at @s run function mapwreckori:void/tick
execute store result score @s mapwreckori.attribute_luck run attribute @s minecraft:generic.luck get

execute as @s[scores={mapwreckori.take_damage=1..},predicate=mapwreckori:broken_clock] at @s run function mapwreckori:boost
execute as @s[scores={mapwreckori.take_damage=1..},predicate=mapwreckori:mycogenesis] at @s run function mapwreckori:spore_spread
execute as @s[scores={mapwreckori.take_damage=1..},predicate=mapwreckori:rockbound] at @s run function mapwreckori:rockbound
execute if score count mapwreckori.infected matches 1.. run effect give @s[predicate=mapwreckori:cyanic_root] minecraft:haste 2 0 false
execute if score count mapwreckori.infected matches 1.. run effect give @s[predicate=mapwreckori:camembert_coulant] minecraft:regeneration 2 0 false

execute as @s[nbt={ActiveEffects:[{Id:15}]}] run scoreboard players set @s mapwreckori.embrace 1
execute as @s[nbt={ActiveEffects:[{Id:33}]}] run scoreboard players set @s mapwreckori.embrace 1
execute if score @s mapwreckori.embrace matches 1.. run function mapwreckori:embrace_set

execute as @s[predicate=mapwreckori:metabolic_haste] run function mapwreckori:meta_haste
execute as @s[predicate=mapwreckori:metabolic_speed] run function mapwreckori:meta_speed
execute as @s[predicate=mapwreckori:metabolic_strength] run function mapwreckori:meta_strength
execute as @s[predicate=mapwreckori:metabolic_regen] run function mapwreckori:meta_regen
execute as @s[predicate=mapwreckori:metabolic_weak] run function mapwreckori:meta_weak
effect give @s[predicate=mapwreckori:threshold_speed,scores={mapwreckori.health=..7}] minecraft:speed 2 0 false

scoreboard players set @s mapwreckori.take_damage 0
scoreboard players set @s mapwreckori.embrace 0
