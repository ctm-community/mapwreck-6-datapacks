#spawns scarecrow golems

#spawn golems
execute if entity @s[tag=good] run summon iron_golem ~ ~ ~ {Silent:1b,DeathLootTable:"empty",PersistenceRequired:1b,NoAI:1b,AbsorptionAmount:8f,Health:100f,Tags:["scarecrow","good","custom20hz"],Passengers:[{id:"minecraft:item_display",item_display:"head",view_range:1000f,shadow_radius:0f,width:3f,height:4f,Tags:["scarecrow","good"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-1f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:potato",Count:1b,tag:{CustomModelData:2}}}],Attributes:[{Name:generic.max_health,Base:100},{Name:generic.attack_damage,Base:0}]}
execute if entity @s[tag=bad] run summon iron_golem ~ ~ ~ {Silent:1b,DeathLootTable:"empty",PersistenceRequired:1b,NoAI:1b,AbsorptionAmount:8f,Health:100f,Tags:["scarecrow","bad","custom20hz"],Passengers:[{id:"minecraft:item_display",item_display:"head",view_range:1000f,shadow_radius:0f,width:3f,height:4f,Tags:["scarecrow","bad"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-1f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:potato",Count:1b,tag:{CustomModelData:3}}}],Attributes:[{Name:generic.max_health,Base:100},{Name:generic.attack_damage,Base:0}]}

#Both golem and item display have tag scarecrow
execute as @e[tag=scarecrow,distance=..3] at @s facing entity @p feet run tp @s ~ ~ ~ ~180 0

#kill self
function link:mobs/generic/voidkill