#casts the carrot wand

#sfx
#playsound minecraft:entity.generic.swim record @a ~ ~ ~ 1 0.5
playsound minecraft:entity.ender_dragon.shoot player @a ~ ~ ~ 1 1
execute anchored eyes positioned ^-0.5 ^-0.2 ^0.6 run function delta:api/explosion_particle
execute anchored eyes positioned ^-0.5 ^-0.2 ^0.6 run particle cloud ~ ~ ~ 0.2 0.2 0.2 0 5

#projectile
execute at @s run summon armor_stand ^ ^ ^-0.2 {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:0b,Invisible:1b,Tags:["custom20hz","generic","carrotproj"],DisabledSlots:4144959,Passengers:[{id:"minecraft:item_display",item_display:"gui",Tags:["carrotdisplay"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,1.4f],scale:[1f,1f,1f]},item:{id:"minecraft:carrot",Count:1b,tag:{CustomModelData:1}}}]}
execute at @s positioned ^ ^ ^-0.2 as @e[type=armor_stand,distance=..2,tag=carrotproj,limit=1,sort=nearest] at @s facing entity @a[distance=..3,limit=1,sort=nearest] feet run tp @s ^ ^ ^1 ~ ~

execute at @s run scoreboard players add @e[type=armor_stand,distance=..3,tag=carrotproj] life 0
execute at @s as @e[type=armor_stand,distance=..3,tag=carrotproj,scores={life=0}] at @s on passengers facing entity @a[limit=1,sort=nearest] feet run tp @s ~ ~ ~ ~180 ~90
execute at @s as @e[type=armor_stand,distance=..3,tag=carrotproj,scores={life=0}] at @s run tp @s ~ ~1.6 ~
