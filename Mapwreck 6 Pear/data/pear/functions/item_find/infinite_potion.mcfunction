data modify storage pear:inv hotbar set value [{},{},{},{},{},{},{},{},{},{}]

data modify storage pear:inv hotbar[0] set from entity @s Inventory[{Slot:0b}]
data modify storage pear:inv hotbar[1] set from entity @s Inventory[{Slot:1b}]
data modify storage pear:inv hotbar[2] set from entity @s Inventory[{Slot:2b}]
data modify storage pear:inv hotbar[3] set from entity @s Inventory[{Slot:3b}]
data modify storage pear:inv hotbar[4] set from entity @s Inventory[{Slot:4b}]
data modify storage pear:inv hotbar[5] set from entity @s Inventory[{Slot:5b}]
data modify storage pear:inv hotbar[6] set from entity @s Inventory[{Slot:6b}]
data modify storage pear:inv hotbar[7] set from entity @s Inventory[{Slot:7b}]
data modify storage pear:inv hotbar[8] set from entity @s Inventory[{Slot:8b}]
data modify storage pear:inv hotbar[9] set from entity @s Inventory[{Slot:-106b}]

data modify storage pear:inv refresh_pot set value {}

data modify storage pear:inv refresh_pot set from storage pear:inv hotbar[{tag:{ItemInfinitePotionEmpty:1b}}]

scoreboard players set $slot pear.var -1000000
execute if data storage pear:inv refresh_pot.Slot store result score $slot pear.var run data get storage pear:inv refresh_pot.Slot

data modify storage pear:inv refresh_pot.tag.Flask.Slot set value 0b

execute if score $slot pear.var matches -200.. run function pear:item_find/fix_flask