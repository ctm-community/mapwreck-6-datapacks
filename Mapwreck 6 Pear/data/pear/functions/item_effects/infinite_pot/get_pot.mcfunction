data modify storage pear:inf_pot data set value {}
data modify storage pear:inf_pot data.item set from entity @e[type=potion,limit=1,sort=nearest,distance=..3,nbt={Item:{tag:{ItemInfinitePotion:1b}}}] Item

execute store result score $time pear.pot_time run data get storage pear:inf_pot data.item.tag.PotionCooldown

data modify storage pear:inf_pot data.empty_flask set value {Slot:0b,id:"minecraft:dragon_breath",Count:1b,tag:{display:{Name:'{"text":"Empty Flask","color":"gray","italic":false}',Lore:['{"text":"Currently recharging...","color":"gray","italic":false}']},ItemInfinitePotionEmpty:1b}}
data modify storage pear:inf_pot data.empty_flask.tag.Flask set from storage pear:inf_pot data.item


data modify block 4206900 0 4206900 Items set value []
data modify block 4206900 0 4206900 Items append from storage pear:inf_pot data.empty_flask

execute if score @s pear.item_inf_pot matches 1 run loot replace entity @s weapon.mainhand 1 mine 4206900 0 4206900 minecraft:air{drop_contents:1b}

execute if score @s pear.item_inf_pot matches 2 run loot replace entity @s weapon.offhand 1 mine 4206900 0 4206900 minecraft:air{drop_contents:1b}


scoreboard players operation @s pear.pot_time += $time pear.pot_time