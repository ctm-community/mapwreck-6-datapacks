#Damage lds is the damage to do! So 5000 will do 5hp damage
#This function deals true damage* to any non-player entity while giving i-frames, hit animation, and kill credit
# *1 tick of wither/insta health (wither immune mobs) is dealt so witches, res mobs, and prot mobs have some protection against the last hp tick

#LDS stands for Link Damage System <3 

#First, store and adjust damage lds to account for wither
scoreboard players operation damage2 lds = damage lds
scoreboard players operation damage2 lds -= 1000 numbers
execute if entity @s[type=#minecraft:wither_immune] run scoreboard players operation damage2 lds -= 5000 numbers

#Next, we grab mob data and put it into storage
data modify storage lds:mob Mob set value {}
data modify storage lds:mob Mob set from entity @s

#Set damage to 0 if mob has resistance 4
scoreboard players set temp2 lds 0
execute store result score temp2 lds run data get storage lds:mob Mob.ActiveEffects[{Id:11}].Amplifier
execute if score temp2 lds matches 4.. run scoreboard players set damage2 lds 0
scoreboard players set temp2 lds 0

#Then we just do some math to get the absorption, *unless healing and no absorb
scoreboard players set temp lds 0
execute store result score temp lds run data get storage lds:mob Mob.AbsorptionAmount 1000
execute store result score temp2 lds run data get storage lds:mob Mob.AbsorptionAmount 1000
execute if score temp2 lds > 0 numbers store result entity @s AbsorptionAmount float 0.001 run scoreboard players operation temp lds -= damage2 lds

#subtract absorb damage delt from total, *unless healing and no absorb
execute if score temp2 lds > 0 numbers if score temp2 lds > damage2 lds run scoreboard players set damage2 lds 0
execute if score temp2 lds > 0 numbers if score temp2 lds <= damage2 lds run scoreboard players operation damage2 lds -= temp2 lds

#Then we just do some math to get the hp
scoreboard players set temp lds 0
execute store result score temp lds run data get storage lds:mob Mob.Health 1000
execute store result entity @s Health float 0.001 run scoreboard players operation temp lds -= damage2 lds

#Hol' up, what if this mob is gonna die?! We gotta make sure that it has death sound effect and kill credit if possible
execute if entity @s[type=#minecraft:wither_immune] run scoreboard players operation temp lds -= 4000 numbers
execute if score temp lds matches ..1000 run data modify entity @s Health set value 0.00001f
execute if score temp lds matches ..1000 at @s if entity @s[tag=!windtemp] run function link:mobs/generic/damagearrow
execute if score temp lds matches ..1000 positioned ~ ~0.5 ~ as @e[distance=..6,type=minecraft:arrow,tag=lds.killer] run data modify entity @s Owner set from entity @a[limit=1,sort=nearest] UUID

#If the arrow is in a block, deal non-credited damage
execute if score temp lds matches ..1000 positioned ~ ~0.5 ~ as @e[distance=..6,type=minecraft:arrow,tag=lds.killer] at @s unless block ~ ~ ~ #minecraft:airish run scoreboard players set temp lds 1001

#Doing wither damage gives the mob i-frames, give insta health to immune mobs
execute unless score temp lds matches ..1000 run effect give @s wither 1 1 true
execute unless score temp lds matches ..1000 if entity @s[type=#minecraft:wither_immune] run effect give @s instant_health 1 0 true

#override for wind
execute if score temp lds matches ..1000 at @s if entity @s[tag=windtemp] run kill @s
