#Creates a spike that comes out of the ground to harass player

summon item_display ~ ~-5 ~ {view_range:100f,width:3f,height:3f,Tags:["custom20hz","boss16spike"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,2f]},item:{id:"minecraft:pink_dye",Count:1b,tag:{CustomModelData:3}}}
execute unless score beetroot boss16 matches 1 run summon item_display ~ ~-5 ~ {view_range:100f,width:3f,height:3f,Tags:["custom20hz","boss16spike"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,2f]},item:{id:"minecraft:pink_dye",Count:1b,tag:{CustomModelData:3}}}


execute positioned ~ ~-5 ~ if score pink boss16 matches 1.. as @e[distance=..1,type=item_display,tag=boss16spike,limit=1,sort=nearest] run data modify entity @s item.tag.CustomModelData set value 13
execute positioned ~ ~-5 ~ run spreadplayers ~ ~ 0 12 under 170 false @e[distance=..1,type=item_display,tag=boss16spike,limit=1,sort=nearest]
