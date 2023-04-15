execute if score @s pear.item_hex_eater matches 1.. run function pear:item_effects/hex_eater/master

execute if score @s pear.item_crasher matches 1.. run function pear:item_effects/crasher/master

execute if score @s pear.item_sprinter matches 1.. if score @s pear.sprinting matches 1.. run function pear:item_effects/sprinter/master