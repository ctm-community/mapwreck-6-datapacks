
execute store result entity @s Pos[0] double 1 run data get storage inasa:storage sudo_root.locations.player_tp.lime[0]
execute store result entity @s Pos[1] double 1 run data get storage inasa:storage sudo_root.locations.player_tp.lime[1]
execute store result entity @s Pos[2] double 1 run data get storage inasa:storage sudo_root.locations.player_tp.lime[2]

execute at @s align xyz positioned ~.5 ~ ~.5 run tp @p[tag=inasa.teleport] ~ ~ ~

execute at @s run playsound minecraft:block.enchantment_table.use player @p[tag=inasa.teleport] ~ ~ ~ 1 1.1
execute at @s run playsound minecraft:entity.enderman.teleport player @p[tag=inasa.teleport] ~ ~ ~ 0.3 2

kill @s
