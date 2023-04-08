#Checks the owner of the arrow and apply scaling when it spawns in

#get own uuid
scoreboard players set arrow uuid 0
execute store result score @s uuid run data get entity @s Owner[0] 1

#get uuid of nearby mobs
execute positioned ~-3 ~-3 ~-3 as @e[dx=6,dy=6,dz=6,type=#minecraft:hasai] store result score @s uuid run data get entity @s UUID[0]

#if it's a match, modify arrow accordingly. This damage is roughly equal to half of what melee damage would scale to. 
execute positioned ~-3 ~-3 ~-3 as @e[dx=6,dy=6,dz=6,type=#minecraft:hasai] at @s if score @s uuid = @e[distance=..5,type=arrow,limit=1,sort=nearest] uuid store result entity @e[distance=..5,type=arrow,limit=1,sort=nearest] damage double 0.0003 run scoreboard players add @s damage 0 

#reset
tag @s add damagechecked

