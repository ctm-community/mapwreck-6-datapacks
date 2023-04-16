


execute store result score m97_dummyPlayer m97_health_query run data get entity @s Health



summon bee ~ ~ ~ {Silent:1b,CustomNameVisible:0b,Health:40f,TicksSincePollination:20000000,CannotEnterHiveTicks:20000000,AngerTime:20000000,Tags:["ca.acro_pass","ca.acro_strafe_pass","ca.acrobatic","ca.acro_gap_close","ca.ability_dmg--","ca.accelerate+","ca.no_glowing","ca.has_active","ca.storm","ca.prevent_effects","m97_serpent","m97_init","m97_part1"],Passengers:[{id:"minecraft:item_display",Tags:["m97_model"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.3f,1.3f,1.3f]},item:{id:"minecraft:purple_dye",Count:1b,tag:{CustomModelData:1}}}],CustomName:'{"text":"Feathered Serpent","color":"red","italic":false}',HandItems:[{id:"minecraft:stick",Count:1b,tag:{Enchantments:[{id:"minecraft:knockback",lvl:3s},{id:"minecraft:vanishing_curse",lvl:1s}]}},{}],Attributes:[{Name:generic.max_health,Base:40},{Name:generic.attack_damage,Base:12}]}

summon bee ~ ~ ~ {Silent:1b,NoAI:1b,Health:40f,Tags:["m97_serpent","m97_init","m97_part2"],Passengers:[{id:"minecraft:item_display",Tags:["m97_model"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.3f,1.3f,1.3f]},item:{id:"minecraft:purple_dye",Count:1b,tag:{CustomModelData:2}}}],Attributes:[{Name:generic.max_health,Base:40}]}
summon bee ~ ~ ~ {Silent:1b,NoAI:1b,Health:40f,Tags:["m97_serpent","m97_init","m97_part3"],Passengers:[{id:"minecraft:item_display",Tags:["m97_model"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.3f,1.3f,1.3f]},item:{id:"minecraft:purple_dye",Count:1b,tag:{CustomModelData:2}}}],Attributes:[{Name:generic.max_health,Base:40}]}
summon bee ~ ~ ~ {Silent:1b,NoAI:1b,Health:40f,Tags:["m97_serpent","m97_init","m97_part4"],Passengers:[{id:"minecraft:item_display",Tags:["m97_model"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.3f,1.3f,1.3f]},item:{id:"minecraft:purple_dye",Count:1b,tag:{CustomModelData:2}}}],Attributes:[{Name:generic.max_health,Base:40}]}
summon bee ~ ~ ~ {Silent:1b,NoAI:1b,Health:40f,Tags:["m97_serpent","m97_init","m97_part5"],Passengers:[{id:"minecraft:item_display",Tags:["m97_model"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.3f,1.3f,1.3f]},item:{id:"minecraft:purple_dye",Count:1b,tag:{CustomModelData:2}}}],Attributes:[{Name:generic.max_health,Base:40}]}
summon bee ~ ~ ~ {Silent:1b,NoAI:1b,Health:40f,Tags:["m97_serpent","m97_init","m97_part6"],Passengers:[{id:"minecraft:item_display",Tags:["m97_model"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.3f,1.3f,1.3f]},item:{id:"minecraft:purple_dye",Count:1b,tag:{CustomModelData:3}}}],Attributes:[{Name:generic.max_health,Base:40}]}

summon vex ~ ~ ~ {Silent:1b,NoAI:1b,Health:40f,Tags:["m97_serpent","m97_init","m97_partV"],Attributes:[{Name:"generic.max_health",Base:40}]}




execute as @e[tag=m97_init,tag=m97_serpent] at @s run function m97:serpent/init

teleport @s ~ ~-9999999 ~
kill @s