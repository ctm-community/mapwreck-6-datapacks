summon fireball ~ ~ ~ {Fire:0s,Tags:["invi-dt"],Invulnerable:1b}
data modify entity @e[type=fireball,limit=1,sort=nearest,tag=invi-dt] Motion[1] set value -0.5d
data modify entity @e[type=fireball,limit=1,sort=nearest,tag=invi-dt] Owner set from entity @s UUID
playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 1 1 0
particle flame ~ ~ ~ 0 0 0 0.2 10