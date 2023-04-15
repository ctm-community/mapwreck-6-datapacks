playsound minecraft:entity.slime.hurt ambient @s ~ ~ ~ 1.4 0.6
particle minecraft:dust 0.0 0.1 0.0 2 ~ ~ ~ 1 1 1 0.4 25
execute as @e[type=#bb:hostile,distance=..3] run effect give @s minecraft:nausea 1 12
