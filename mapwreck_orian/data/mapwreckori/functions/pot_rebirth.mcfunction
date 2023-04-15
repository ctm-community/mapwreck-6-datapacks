effect clear @s
effect give @s minecraft:instant_health 1 0 false
execute if score @s[type=player] mapwreckori.attribute_luck matches 2.. run effect give @s minecraft:instant_health 1 1 false
