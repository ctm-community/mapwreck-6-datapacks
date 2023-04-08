#20hz in area 16


#jumpscare
execute if score 1hz gremloop matches 3 run kill @e[type=item_display,tag=jumpscarecrow]
execute if score 1hz gremloop matches 3 run scoreboard players set in math 1
execute if score 1hz gremloop matches 3 run scoreboard players set in1 math 100
execute if score 1hz gremloop matches 3 run function tools:rng/range
execute if score 1hz gremloop matches 3 run execute if score out math matches ..1 at @a[limit=1,sort=random] positioned ~ ~2 ~ run summon item_display ^ ^ ^-4 {Silent:1b,view_range:1000f,shadow_radius:0f,width:3f,height:4f,item_display:"head",Tags:["jumpscarecrow"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-1f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:potato",Count:1b,tag:{CustomModelData:2}}}
execute if score 1hz gremloop matches 3 run execute if score out math matches ..1 at @a[limit=1,sort=random] positioned ~ ~2 ~ positioned ^ ^ ^-4 as @e[distance=..3,type=item_display,tag=jumpscarecrow,limit=1,sort=nearest] at @s facing entity @a[limit=1,sort=nearest] feet run tp @s ~ ~ ~ ~180 0