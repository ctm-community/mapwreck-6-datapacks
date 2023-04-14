#20hz in area 16, has no context
##e1d386aa-2478-413f-9acc-b2fd21c3da45 is the main interaction entity


#brotate
execute as @e[x=-203,y=165,z=232,dx=7,dy=7,dz=7,type=item_display,tag=boss16display] at @s run tp @s ~ ~ ~ ~4 ~
execute as 1d155755-5515-4238-b652-74c121a184f8 at @s run tp @s ~ ~ ~ ~3 ~

#windmill
execute if score 1hz gremloop matches 10 run clone -209 159 239 -193 142 238 -202 172 197
execute if score 1hz gremloop matches 1 run clone -175 143 239 -191 159 238 -202 173 197

#Cow fix
execute if score 10s gremloop matches 33 run scoreboard players add @e[x=-212,y=207,z=290,distance=..20,type=cow,tag=ufocow] life 1
execute if score 10s gremloop matches 33 run kill @e[x=-212,y=207,z=290,distance=..20,type=cow,tag=ufocow,scores={life=2..}]

#ufo
effect give @a[x=-217,y=150,z=286,dx=10,dy=50,dz=8] minecraft:levitation 1 4 true
execute if score 5hz gremloop matches 1 as @a[x=-217,y=150,z=286,dx=10,dy=52,dz=8] at @s run playsound minecraft:entity.shulker.ambient hostile @s ~ ~ ~ 0.3 0.66

#jumpscare
execute if score 1hz gremloop matches 3 run kill @e[type=item_display,tag=jumpscarecrow]
execute if score 1hz gremloop matches 3 run scoreboard players set in math 1
execute if score 1hz gremloop matches 3 run scoreboard players set in1 math 100
execute if score 1hz gremloop matches 3 run function tools:rng/range
execute if score 1hz gremloop matches 3 run execute if score out math matches ..1 at @a[limit=1,sort=random] positioned ~ ~2 ~ run summon item_display ^ ^ ^-4 {Silent:1b,view_range:1000f,shadow_radius:0f,width:3f,height:4f,item_display:"head",Tags:["jumpscarecrow"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-1f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:potato",Count:1b,tag:{CustomModelData:2}}}
execute if score 1hz gremloop matches 3 run execute if score out math matches ..1 at @a[limit=1,sort=random] positioned ~ ~2 ~ positioned ^ ^ ^-4 as @e[distance=..3,type=item_display,tag=jumpscarecrow,limit=1,sort=nearest] at @s facing entity @a[limit=1,sort=nearest] feet run tp @s ~ ~ ~ ~180 0

#adventure mode in boss section and branch for arena ticking
execute at e1d386aa-2478-413f-9acc-b2fd21c3da45 positioned ~ ~4 ~ as @a[distance=..24] run function link:area16/playerinbossarena
execute as e1d386aa-2478-413f-9acc-b2fd21c3da45 at @s run function link:area16/arenatick

#player near farmer
execute if score 1hz gremloop matches 17 as @a at @s if entity @e[distance=..7,type=villager,tag=farmerguy,limit=1] run function link:area16/farmer