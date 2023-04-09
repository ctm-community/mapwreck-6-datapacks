#kills carrot pot and applies velocity


execute on passengers run ride @s dismount
data modify entity @e[distance=..1,type=minecraft:potion,limit=1,sort=nearest] Motion[0] set from entity @s Motion[0]
data modify entity @e[distance=..1,type=minecraft:potion,limit=1,sort=nearest] Motion[1] set from entity @s Motion[1]
data modify entity @e[distance=..1,type=minecraft:potion,limit=1,sort=nearest] Motion[2] set from entity @s Motion[2]

kill @s