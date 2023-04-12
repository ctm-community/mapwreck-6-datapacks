#happens 20hz on all players whenever inside boss arena


#tagging and adventure mode
tag @s add ina16boss
tag @s add wasina16boss

gamemode adventure @s[gamemode=survival]

#player must stay in arena during boss
execute at @s if score active boss16 matches 1 if block ~ 161 ~ minecraft:black_concrete if entity @s[gamemode=adventure] run function link:boss/overlava
execute at @s if score active boss16 matches 1 if block ~ ~ ~ minecraft:water if entity @s[gamemode=adventure] run function link:boss/overwater
