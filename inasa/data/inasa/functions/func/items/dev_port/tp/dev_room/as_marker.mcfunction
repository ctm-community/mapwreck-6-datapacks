
execute store result entity @s Pos[0] double 1 run data get storage inasa:storage sudo_root.locations.dev_tp.devroom[0]
execute store result entity @s Pos[1] double 1 run data get storage inasa:storage sudo_root.locations.dev_tp.devroom[1]
execute store result entity @s Pos[2] double 1 run data get storage inasa:storage sudo_root.locations.dev_tp.devroom[2]

execute at @s align xyz positioned ~.5 ~ ~.5 run tp @p[tag=inasa.teleport] ~ ~ ~
kill @s
