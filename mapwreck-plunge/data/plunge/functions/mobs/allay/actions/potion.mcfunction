summon potion ~ ~ ~ {Item:{id:"minecraft:splash_potion",Count:1b,tag:{CustomPotionColor:65535,CustomPotionEffects:[{Id:7,Amplifier:0b,Duration:1},{Id:19,Amplifier:1b,Duration:60}]}},Tags:["invi-dt"]}
data modify entity @e[type=potion,limit=1,sort=nearest,tag=invi-dt] Owner set from entity @s UUID
data modify entity @e[type=potion,limit=1,sort=nearest,tag=invi-dt] Motion set from entity @s Motion
playsound minecraft:entity.splash_potion.throw hostile @a ~ ~ ~ 1 1 0
particle block spawner ~ ~ ~ 0 0 0 0.2 10