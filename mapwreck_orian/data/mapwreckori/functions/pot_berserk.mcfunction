effect clear @s minecraft:luck
effect give @s minecraft:instant_damage 1 0 false
effect give @s minecraft:strength 240 0 true
execute if score @s[type=player] mapwreckori.attribute_luck matches 2.. run effect give @s minecraft:strength 240 1 true
