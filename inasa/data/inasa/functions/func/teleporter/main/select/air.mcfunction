
execute if entity @s[tag=north] positioned ~ ~ ~6 run setblock ~ ~ ~ air
execute if entity @s[tag=south] positioned ~ ~ ~-6 run setblock ~ ~ ~ air
execute if entity @s[tag=west] positioned ~6 ~ ~ run setblock ~ ~ ~ air
execute if entity @s[tag=east] positioned ~-6 ~ ~ run setblock ~ ~ ~ air

execute if entity @s[tag=north] positioned ~ ~ ~7 run setblock ~ ~ ~ air
execute if entity @s[tag=south] positioned ~ ~ ~-7 run setblock ~ ~ ~ air
execute if entity @s[tag=west] positioned ~7 ~ ~ run setblock ~ ~ ~ air
execute if entity @s[tag=east] positioned ~-7 ~ ~ run setblock ~ ~ ~ air
