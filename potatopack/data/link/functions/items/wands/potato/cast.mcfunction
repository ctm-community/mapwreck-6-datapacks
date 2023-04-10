#casts the potatoproj wand

#sfx
playsound minecraft:block.gravel.break player @a ~ ~ ~ 1 0.5
playsound minecraft:block.mud.place player @a ~ ~ ~ 1 0.5

#projectile
execute at @s run summon armor_stand ^ ^ ^-0.2 {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:0b,Invisible:1b,Tags:["custom20hz","generic","potatoproj"],DisabledSlots:4144959,Passengers:[{id:"minecraft:item_display",shadow_radius:0f,item_display:"fixed",Tags:["potatoproj","potatoprojdisplay"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-1f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:potato",Count:1b,tag:{CustomModelData:1}}}]}
execute at @s positioned ^ ^ ^-0.2 as @e[type=armor_stand,distance=..2,tag=potatoproj,limit=1,sort=nearest] at @s facing entity @a[distance=..3,limit=1,sort=nearest] feet run tp @s ^ ^ ^1 ~ ~
execute at @s positioned ^ ^ ^0.8 as @e[type=armor_stand,distance=..2,tag=potatoproj,limit=1,sort=nearest] at @s run tp @s ~ ~1.7 ~
#execute at @s positioned ^ ^ ^0.8 as @e[type=armor_stand,distance=..2,tag=potatoproj,limit=1,sort=nearest] on passengers at @s run tp @s ~ ~ ~ ~ ~-180
