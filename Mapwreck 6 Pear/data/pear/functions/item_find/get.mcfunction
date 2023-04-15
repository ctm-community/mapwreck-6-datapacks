data modify storage pear:inv data set value {}
data modify storage pear:inv inv set from entity @s Inventory

data modify storage pear:inv head set value {}
data modify storage pear:inv body set value {}
data modify storage pear:inv legs set value {}
data modify storage pear:inv feet set value {}
data modify storage pear:inv offh set value {}
data modify storage pear:inv main set value {}

data modify storage pear:inv head set from storage pear:inv inv[{Slot:103b}]
data modify storage pear:inv body set from storage pear:inv inv[{Slot:102b}]
data modify storage pear:inv legs set from storage pear:inv inv[{Slot:101b}]
data modify storage pear:inv feet set from storage pear:inv inv[{Slot:100b}]
data modify storage pear:inv offh set from storage pear:inv inv[{Slot:-106b}]
data modify storage pear:inv main set from entity @s SelectedItem

execute if data storage pear:inv main.id run function pear:item_find/mainhand
execute if data storage pear:inv offh.id run function pear:item_find/offhand
execute if data storage pear:inv head.id run function pear:item_find/head
execute if data storage pear:inv body.id run function pear:item_find/body
execute if data storage pear:inv legs.id run function pear:item_find/legs
execute if data storage pear:inv feet.id run function pear:item_find/feet

execute unless score @s pear.pot_time matches 1.. run function pear:item_find/infinite_potion