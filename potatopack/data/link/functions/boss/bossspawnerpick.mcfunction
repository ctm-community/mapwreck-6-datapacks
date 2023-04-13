#Makes player picks break spawners

#Item grab
data modify storage game:item Item set value {}
data modify storage game:item Item set from entity @s SelectedItem

#Item detect
scoreboard players set temp temp 0
execute if data storage game:item {Item:{id:"minecraft:wooden_pickaxe"}} run scoreboard players set temp temp 1
execute if data storage game:item {Item:{id:"minecraft:stone_pickaxe"}} run scoreboard players set temp temp 1
execute if data storage game:item {Item:{id:"minecraft:golden_pickaxe"}} run scoreboard players set temp temp 1
execute if data storage game:item {Item:{id:"minecraft:iron_pickaxe"}} run scoreboard players set temp temp 1
execute if data storage game:item {Item:{id:"minecraft:diamond_pickaxe"}} run scoreboard players set temp temp 1
execute if data storage game:item {Item:{id:"minecraft:netherite_pickaxe"}} run scoreboard players set temp temp 1

#Item adjust
execute if score temp temp matches 1.. run data merge storage game:item {Item:{tag:{CanDestroy:["minecraft:spawner"]}}}
setblock -200 156 231 air
setblock -200 156 231 chest{Items:[{Slot:0b,id:"minecraft:stone",Count:1b}]}
data modify block -200 156 231 Items[0] set from storage game:item Item

#Item slap 
item replace entity @s weapon.mainhand from block -200 156 231 container.0
