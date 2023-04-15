tag @s remove inviact
tag @s remove invitarget
tag @s remove inviprep

data modify entity @s HandItems[0] set value {}
data modify entity @s Inventory set value []
data modify entity @s Brain.memories."minecraft:liked_player".value set value []

effect clear @s glowing