#ticking for projectile

#particles
particle smoke ~ ~ ~ 0.2 0.2 0.2 0 1 force
#particle smoke ^ ^ ^0.5 0.2 0.2 0.2 0 1 force

#movement
tp @s ^ ^ ^1
#execute on passengers at @s run tp @s ~ ~ ~ ~25 ~

#impact with a valid entity
execute at @s positioned ~-0.3 ~-0.1 ~-0.3 as @e[dx=0.6,dy=0.2,dz=0.6,type=#minecraft:hasai,type=!player,nbt={HurtTime:0s}] at @s run function link:items/wands/carrot/impact

#kill if old
execute if entity @s[scores={life=100..}] at @s run function link:items/wands/potato/kill

#kill if in block
execute at @s unless block ~ ~ ~ #minecraft:airish run playsound minecraft:sfx.vineboom hostile @a[distance=..2]
execute at @s unless block ~ ~ ~ #minecraft:airish run function link:items/wands/potato/kill