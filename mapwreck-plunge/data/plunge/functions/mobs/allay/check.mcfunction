data modify storage invi DTAllay set from entity @s Brain.memories."minecraft:liked_player".value
execute as @a[distance=..3] store success score . Plunge.AllayMatch. run data modify storage invi DTAllay.Brain.memories."minecraft:liked_player".value set from entity @s UUID
execute if score . Plunge.AllayMatch. matches 0 run function plunge:mobs/allay/perform