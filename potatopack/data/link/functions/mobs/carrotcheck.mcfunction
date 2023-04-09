#checks arrows to see if carrots own, if so, do fun stuffs

#Is this skele arrow?
scoreboard players set uuid temp 0
scoreboard players set uuid2 temp 0
execute store result score uuid temp run data get entity @s Owner[1]
execute store result score uuid2 temp run data get entity @e[distance=..4,type=skeleton,tag=carrot,limit=1,sort=nearest] UUID[1]


#If success
execute if score uuid temp = uuid2 temp run data modify entity @s damage set value 0.00
execute if score uuid temp = uuid2 temp run data modify entity @s SoundEvent set value "block.grass.step"
execute if score uuid temp = uuid2 temp run data modify entity @s life set value 1200
execute if score uuid temp = uuid2 temp run summon potion ~ ~ ~ {NoGravity:0b,Tags:["carrot"],Item:{id:"minecraft:poisonous_potato",Count:1b,tag:{Potion:"minecraft:empty",CustomPotionColor:16744707,CustomPotionEffects:[{Id:17,Amplifier:80b,Duration:40,ShowParticles:1b}]}}}
#execute if score uuid temp = uuid2 temp run data modify entity @e[distance=..1,type=minecraft:potion,tag=carrot,limit=1,sort=nearest] Motion[0] set from entity @s Motion[0]
#execute if score uuid temp = uuid2 temp run data modify entity @e[distance=..1,type=minecraft:potion,tag=carrot,limit=1,sort=nearest] Motion[1] set from entity @s Motion[1]
#execute if score uuid temp = uuid2 temp run data modify entity @e[distance=..1,type=minecraft:potion,tag=carrot,limit=1,sort=nearest] Motion[2] set from entity @s Motion[2]

execute if score uuid temp = uuid2 temp run ride @e[distance=..1,type=minecraft:potion,tag=carrot,limit=1,sort=nearest] mount @s
execute if score uuid temp = uuid2 temp run tag @e[distance=..1,type=minecraft:potion,tag=carrot,limit=1,sort=nearest] remove carrot
execute if score uuid temp = uuid2 temp run playsound minecraft:entity.chicken.egg hostile @a ~ ~ ~ 1 1
#Finally
execute if score uuid temp = uuid2 temp run tag @s add custom20hz
execute if score uuid temp = uuid2 temp run tag @s add carrotpot
tag @s add carrotcheck
#kill @s