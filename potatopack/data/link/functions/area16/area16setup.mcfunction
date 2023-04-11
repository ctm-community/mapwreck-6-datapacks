#SEts up relevant entities for area 16
##e1d386aa-2478-413f-9acc-b2fd21c3da45 is the main interaction entity


kill 3a21d3df-3966-42e7-81df-b65cae6e532e
summon item_display -212.5 180 290.5 {UUID:[I;975295455,963003111,-2116045220,-1368501458],view_range:1000f,width:200f,height:200f,Tags:["a16beam"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-7f,0f],scale:[18f,80f,18f]},item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:3}}}

#boss displays
kill @e[tag=boss16display]
kill @e[type=item,tag=blackwool]
kill @e[type=villager,tag=farmerguy]
tag @a remove farmervoiceline

summon text_display -200 167 235 {view_range:0.25f,width:3f,height:3f,billboard:"vertical",shadow:1b,see_through:0b,alignment:"center",Tags:["boss16display"],text:'[{"text":"Click to \\nstart boss","bold":true,"italic":false},{"text":"\\n(tps all)","bold":false,"italic":false}]',background:16711680}
summon interaction -200 167 235 {UUID:[I;-506231126,611860799,-1697860867,566483525],width:1f,height:1f,response:1b,Tags:["boss16display","boss16interaction"]}
summon text_display -197 166.4 238 {view_range:0.25f,width:3f,height:3f,billboard:"vertical",shadow:1b,see_through:0b,alignment:"center",Tags:["boss16display"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.7f,0.7f,0.7f]},text:'[{"text":"Place \\n","color":"gray","bold":false,"italic":false},{"text":"Holy Potato","color":"yellow","bold":true,"italic":false}]',background:16711680}
summon text_display -197 166.4 232 {view_range:0.25f,width:3f,height:3f,billboard:"vertical",shadow:1b,see_through:0b,alignment:"center",Tags:["boss16display"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.7f,0.7f,0.7f]},text:'[{"text":"Place \\n","color":"gray","bold":false,"italic":false},{"text":"Perfect Carrot","color":"#FFA033","bold":true,"italic":false}]',background:16711680}
summon text_display -203 166.4 238 {view_range:0.25f,width:3f,height:3f,billboard:"vertical",shadow:1b,see_through:0b,alignment:"center",Tags:["boss16display"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.7f,0.7f,0.7f]},text:'[{"text":"Place \\n","color":"gray","bold":false,"italic":false},{"text":"Virgin Beetroot Seeds","color":"#E6C475","bold":true,"italic":false}]',background:16711680}
summon text_display -203 166.4 232 {view_range:0.25f,width:3f,height:3f,billboard:"vertical",shadow:1b,see_through:0b,alignment:"center",Tags:["boss16display"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.7f,0.7f,0.7f]},text:'[{"text":"Place \\n","color":"gray","bold":false,"italic":false},{"text":"Pure Wheat Seeds","color":"green","bold":true,"italic":false}]',background:16711680}
summon item_display -197 167.2 238 {view_range:0.25f,width:3f,height:3f,billboard:"fixed",Rotation:[135F,0F],Tags:["boss16display"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.6f,0.6f,0.6f]},item:{id:"minecraft:potato",Count:1b,tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:1s}]}}}
summon item_display -203 167.2 238 {view_range:0.25f,width:3f,height:3f,billboard:"fixed",Rotation:[135F,0F],Tags:["boss16display"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.6f,0.6f,0.6f]},item:{id:"minecraft:beetroot_seeds",Count:1b,tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:1s}]}}}
summon item_display -203 167.2 232 {view_range:0.25f,width:3f,height:3f,billboard:"fixed",Rotation:[135F,0F],Tags:["boss16display"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.6f,0.6f,0.6f]},item:{id:"minecraft:wheat_seeds",Count:1b,tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:1s}]}}}
summon item_display -197 167.2 232 {view_range:0.25f,width:3f,height:3f,billboard:"fixed",Rotation:[135F,0F],Tags:["boss16display"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.6f,0.6f,0.6f]},item:{id:"minecraft:carrot",Count:1b,tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:1s}]}}}

summon text_display -202.5 165.5 231.9 {view_range:0.25f,width:3f,height:3f,billboard:"fixed",shadow:1b,see_through:0b,alignment:"center",Rotation:[-180F,0F],Tags:["boss16display","upgrade"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.6f,0.6f,0.6f]},text:'{"text":"Easier\\n🌊 Moves 🌊","color":"#146AB5","bold":false,"italic":false}',background:16711680}
summon text_display -203.1 165.5 232.5 {view_range:0.25f,width:3f,height:3f,billboard:"fixed",shadow:1b,see_through:0b,alignment:"center",Rotation:[90F,0F],Tags:["boss16display","upgrade"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.6f,0.6f,0.6f]},text:'{"text":"Easier\\n🌊 Moves 🌊","color":"#146AB5","bold":false,"italic":false}',background:16711680}
summon text_display -203.1 165.5 238.5 {view_range:0.25f,width:3f,height:3f,billboard:"fixed",shadow:1b,see_through:0b,alignment:"center",Rotation:[90F,0F],Tags:["boss16display","upgrade"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.6f,0.6f,0.6f]},text:'{"text":"Easier\\n🔱 Minions 🔱","color":"#C4BF1B","bold":false,"italic":false}',background:16711680}
summon text_display -202.5 165.5 239.1 {view_range:0.25f,width:3f,height:3f,billboard:"fixed",shadow:1b,see_through:0b,alignment:"center",Tags:["boss16display","upgrade"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.6f,0.6f,0.6f]},text:'{"text":"Easier\\n🔱 Minions 🔱","color":"#C4BF1B","bold":false,"italic":false}',background:16711680}
summon text_display -196.5 165.5 239.1 {view_range:0.25f,width:3f,height:3f,billboard:"fixed",shadow:1b,see_through:0b,alignment:"center",Tags:["boss16display","upgrade"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.6f,0.6f,0.6f]},text:'{"text":"Less Boss\\n❤ Health ❤","color":"#A60C0C","bold":false,"italic":false}',background:16711680}
summon text_display -195.9 165.5 238.5 {view_range:0.25f,width:3f,height:3f,billboard:"fixed",shadow:1b,see_through:0b,alignment:"center",Rotation:[-90F,0F],Tags:["boss16display","upgrade"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.6f,0.6f,0.6f]},text:'{"text":"Less Boss\\n❤ Health ❤","color":"#A60C0C","bold":false,"italic":false}',background:16711680}
summon text_display -195.9 165.5 232.5 {view_range:0.25f,width:3f,height:3f,billboard:"fixed",shadow:1b,see_through:0b,alignment:"center",Rotation:[-90F,0F],Tags:["boss16display","upgrade"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.6f,0.6f,0.6f]},text:'{"text":"Less Boss\\n⚔ Damage ⚔","color":"#44A644","bold":false,"italic":false}',background:16711680}
summon text_display -196.5 165.5 231.9 {view_range:0.25f,width:3f,height:3f,billboard:"fixed",shadow:1b,see_through:0b,alignment:"center",Rotation:[180F,0F],Tags:["boss16display","upgrade"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.6f,0.6f,0.6f]},text:'{"text":"Less Boss\\n⚔ Damage ⚔","color":"#44A644","bold":false,"italic":false}',background:16711680}

#Reset crop unlocks
scoreboard players set carrot boss16 0
scoreboard players set potato boss16 0
scoreboard players set beetroot boss16 0
scoreboard players set wheat boss16 0

#villager
summon villager -209 163 184 {Invulnerable:1b,DeathLootTable:"empty",PersistenceRequired:1b,NoAI:1b,Rotation:[90F,0F],Tags:["farmerguy"],Attributes:[{Name:generic.movement_speed,Base:0}],VillagerData:{profession:"minecraft:farmer",type:"minecraft:plains"},Offers:{}}


#reset misc. boss stuff
scoreboard players set active boss16 0
execute at e1d386aa-2478-413f-9acc-b2fd21c3da45 run fillbiome ~-17 ~-10 ~-16 ~17 ~10 ~16 minecraft:end_highlands

#Delete crops and reset crop placement
setblock -203 166 232 air
setblock -197 166 232 air
setblock -197 166 238 air
setblock -203 166 238 air
setblock -203 165 232 farmland[moisture=7]
setblock -197 165 232 farmland[moisture=7]
setblock -197 165 238 farmland[moisture=7]
setblock -203 165 238 farmland[moisture=7]
setblock -203 164 232 water
setblock -197 164 232 water
setblock -197 164 238 water
setblock -203 164 238 water

#give @p spawner{BlockEntityTag:{SpawnCount:1,MinSpawnDelay:100,MaxSpawnDelay:150,RequiredPlayerRange:40,SpawnData:{entity:{id:"minecraft:cow",DeathLootTable:"empty",Health:1f,Motion:[0.0,0.5,0.0],Tags:["ufocow"],CustomName:'{"text":"Dinnerbone"}',ActiveEffects:[{Id:25,Amplifier:1b,Duration:1000000,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:1}]},custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}}},SpawnPotentials:[{weight:1,data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:cow",DeathLootTable:"empty",Health:1f,Motion:[0.0,0.5,0.0],Tags:["ufocow"],CustomName:'{"text":"Dinnerbone"}',ActiveEffects:[{Id:25,Amplifier:1b,Duration:1000000,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:1}]}}}]}} 1