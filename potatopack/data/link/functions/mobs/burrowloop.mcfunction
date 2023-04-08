#creepers or any other mob that should burrow
scoreboard players remove n temp 1

execute if block ~ ~-0.1 ~ #minecraft:airish run tp @s ~ ~-0.1 ~

execute if score n temp matches 1.. at @s run function link:mobs/burrowloop
