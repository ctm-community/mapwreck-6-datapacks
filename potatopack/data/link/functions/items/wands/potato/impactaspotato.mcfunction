#What happens when the rock impacts an entity

#killing self
execute if entity @s[tag=1stimpact] run function link:items/wands/potato/kill
execute at @s unless block ~ ~ ~ #minecraft:airish run function link:items/wands/potato/kill
tag @s add 1stimpact
