
execute align xyz positioned ~.5 ~ ~.5 run summon item_display ~ ~ ~ {item_display:"fixed",Tags:["inasa.object","inasa.teleporter.aux.display.enchanting_table"],Passengers:[{id:"minecraft:interaction",width:1.1f,height:1.1f,Tags:["inasa.object","inasa.interaction_any","inasa.teleporter.aux.interaction","inasa.teleporter.aux.area.unassigned"]}],transformation:[2.000f, 0.000f, 0.000f,0.000f,0.000f, 2.000f, 0.000f,0.500f,0.000f, 0.000f, 2.000f,0.000f,0.000f, 0.000f, 0.000f,1.000f],item:{id:"minecraft:enchanting_table",Count:1b,tag:{CustomModelData:2}}}

setblock ~ ~ ~ barrier

summon item ~ ~1 ~ {CustomNameVisible:1b,Age:5900,PickupDelay:32767,Invulnerable:1b,Tags:["inasa.object","inasa.teleporter.aux.item_tooltip"],CustomName:'[{"keybind":"key.use","color":"#F5CE54","italic":false},{"text":" to set what area this teleporter belongs to.","color":"#EFDADA","italic":false}]',Item:{id:"minecraft:stone_button",Count:1b}}

kill @s
