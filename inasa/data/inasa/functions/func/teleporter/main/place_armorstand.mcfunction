
tp @s ~ ~ ~ facing entity @p[advancements={inasa:used_armor_stand=true}]

#south
execute if entity @s[y_rotation=-40..40] run setblock ~ ~ ~ minecraft:structure_block[mode=load]{author:"RockNRed",ignoreEntities:1b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"inasa:teleporter/main",posX:-9,posY:-1,posZ:-18,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:1b,sizeX:19,sizeY:10,sizeZ:19}
#west
execute if entity @s[y_rotation=39..139] run setblock ~ ~ ~ minecraft:structure_block[mode=load]{author:"RockNRed",ignoreEntities:1b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"inasa:teleporter/main",posX:18,posY:-1,posZ:-9,powered:0b,rotation:"CLOCKWISE_90",seed:0L,showair:0b,showboundingbox:1b,sizeX:19,sizeY:10,sizeZ:19}
#north
execute if entity @s[y_rotation=140..-139] run setblock ~ ~ ~ minecraft:structure_block[mode=load]{author:"RockNRed",ignoreEntities:1b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"inasa:teleporter/main",posX:9,posY:-1,posZ:18,powered:0b,rotation:"CLOCKWISE_180",seed:0L,showair:0b,showboundingbox:1b,sizeX:19,sizeY:10,sizeZ:19}
#east
execute if entity @s[y_rotation=-140..-39] run setblock ~ ~ ~ minecraft:structure_block[mode=load]{author:"RockNRed",ignoreEntities:1b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"inasa:teleporter/main",posX:-18,posY:-1,posZ:9,powered:0b,rotation:"COUNTERCLOCKWISE_90",seed:0L,showair:0b,showboundingbox:1b,sizeX:19,sizeY:10,sizeZ:19}

tellraw @p[advancements={inasa:used_armor_stand=true}] ["",{"text":"LOAD","color":"#F5CE54"},{"text":" with the structure block if you are content with its current location.","color":"#EFDADA"}]

execute if entity @s[y_rotation=-40..40] run summon marker ~ ~ ~ {Tags:["inasa.object","inasa.teleporter.wait_load","inasa.teleporter.south"]}
execute if entity @s[y_rotation=39..139] run summon marker ~ ~ ~ {Tags:["inasa.object","inasa.teleporter.wait_load","inasa.teleporter.west"]}
execute if entity @s[y_rotation=140..-139] run summon marker ~ ~ ~ {Tags:["inasa.object","inasa.teleporter.wait_load","inasa.teleporter.north"]}
execute if entity @s[y_rotation=-140..-39] run summon marker ~ ~ ~ {Tags:["inasa.object","inasa.teleporter.wait_load","inasa.teleporter.east"]}

schedule function inasa:func/teleporter/main/wait_loop 1t

kill @s
