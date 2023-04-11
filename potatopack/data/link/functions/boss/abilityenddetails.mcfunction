#Happens when boss ability ends
scoreboard players set @s cooldown 10000
data merge entity @s {NoAI:1b}
data modify entity @s Attributes[{Name:"minecraft:generic.attack_damage"}].Base set value -10d
execute if score wheat boss16 matches 1.. run data modify entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base set value 0.35d
execute unless score wheat boss16 matches 1.. run data modify entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base set value 0.44d
data modify entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base set value 0d
item replace entity @s weapon.offhand with air