
particle minecraft:cloud ~ ~.5 ~ 0.2 0.2 0.2 0.0001 10 normal @a[gamemode=creative,distance=..16]
playsound minecraft:entity.zombie.attack_wooden_door block @a[distance=..16] ~ ~ ~ 0.5 2

setblock ~ ~ ~ air

execute on vehicle run kill @s
kill @s
