#creates and updates boss displays

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

#displays
kill @e[tag=boss16display]

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

#unique states
execute if score carrot boss16 matches 1.. positioned -197 166 232 run setblock ~ ~ ~ carrots[age=7]
execute if score carrot boss16 matches 1.. positioned -197 166 232 run kill @e[tag=boss16display,tag=!upgrade,distance=..3]

execute if score potato boss16 matches 1.. positioned -197 166 238 run setblock ~ ~ ~ potatoes[age=7]
execute if score potato boss16 matches 1.. positioned -197 166 238 run kill @e[tag=boss16display,tag=!upgrade,distance=..3]

execute if score beetroot boss16 matches 1.. positioned -203 166 238 run setblock ~ ~ ~ beetroots[age=3]
execute if score beetroot boss16 matches 1.. positioned -203 166 238 run kill @e[tag=boss16display,tag=!upgrade,distance=..3]

execute if score wheat boss16 matches 1.. positioned -203 166 232 run setblock ~ ~ ~ wheat[age=7]
execute if score wheat boss16 matches 1.. positioned -203 166 232 run kill @e[tag=boss16display,tag=!upgrade,distance=..3]