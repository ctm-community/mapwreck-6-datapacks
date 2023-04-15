summon item ~ ~ ~ {Item:{id:"minecraft:stone",Count:1b,tag:{invi:"replace"}}}
data modify entity @e[type=item,nbt={Item:{tag:{invi:"replace"}}},sort=nearest,limit=1] Item set from entity @s HandItems[0]
function plunge:mobs/allay/act
scoreboard players set @s Plunge.AllayTimer. 10