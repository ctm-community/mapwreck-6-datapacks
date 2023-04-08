#moves offhand data into mainhand
data modify storage link:item Item set value {}
data modify storage link:item Item set from entity @s HandItems
data modify storage link:item Item[0] set from storage link:item Item[1].tag.realbow
data modify entity @s HandItems set from storage link:item Item
tag @s remove charmswapped