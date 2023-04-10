#Ticking for the ROCK

#rotate me baby
execute on passengers at @s run tp @s ~ ~ ~ ~20 ~
particle block dirt ~ ~ ~ 0.3 0.3 0.3 0 1 normal
particle item potato ~ ~ ~ 0.3 0.3 0.3 0 1 normal

#movement
execute at @s run tp @s ^ ^ ^0.7
execute at @s run tp @s ~ ~ ~ ~ ~1.2

#impact with a valid entity
execute at @s positioned ~-0.6 ~-0.6 ~-0.6 if entity @e[dx=1.2,dy=1.2,dz=1.2,type=#minecraft:hasai,type=!player,nbt={HurtTime:0s}] run scoreboard players add @s temp 1
execute at @s positioned ~-0.6 ~-0.6 ~-0.6 as @e[dx=1.2,dy=1.2,dz=1.2,type=#minecraft:hasai,type=!player,nbt={HurtTime:0s}] at @s run function link:items/wands/potato/impact
execute if entity @s[scores={temp=2..}] run function link:items/wands/potato/kill
#data modify entity @s[scores={temp=1..}] transformation.scale[1] set value 7.0f

#kill if old
execute if entity @s[scores={life=80..}] at @s run function link:items/wands/potato/impact

#kill if in block
execute at @s unless block ~ ~ ~ #minecraft:airish run function link:items/wands/potato/impact