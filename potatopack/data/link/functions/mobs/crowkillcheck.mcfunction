#checks to kill scarecrow
#technically this is when players are near
data merge entity @s {Invulnerable:0b}

#rng every second
execute if score 1hz gremloop matches 8 run scoreboard players set in math 1
execute if score 1hz gremloop matches 8 run scoreboard players set in1 math 100
execute if score 1hz gremloop matches 8 run function tools:rng/range

#spawn taters
scoreboard players set temp temp 0
execute if score 1hz gremloop matches 8 run execute if score out math matches 80.. if entity @s[tag=bad] store result score temp temp if entity @e[distance=..7,type=husk,tag=tater]
execute if score 1hz gremloop matches 8 run execute if score out math matches 80.. if entity @s[tag=bad] if score temp temp matches ..2 run summon husk ~ ~ ~ {Silent:0b,DeathLootTable:"empty",Health:11f,IsBaby:0b,CanBreakDoors:0b,Tags:["custom20hz","tater"],CustomName:'{"text":"a potato","italic":false}',HandItems:[{id:"minecraft:potato",Count:1b,tag:{CustomModelData:1}},{id:"minecraft:potato",Count:1b,tag:{CustomModelData:1}}],HandDropChances:[0.030F,0.030F],ArmorItems:[{},{},{},{id:"minecraft:potato",Count:1b,tag:{CustomModelData:1}}],ArmorDropChances:[0.085F,0.085F,0.085F,0.030F],ActiveEffects:[{Id:14,Amplifier:0b,Duration:100000,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:11},{Name:generic.follow_range,Base:16},{Name:generic.knockback_resistance,Base:1},{Name:generic.movement_speed,Base:0.3},{Name:generic.attack_damage,Base:25},{Name:zombie.spawn_reinforcements,Base:0}]}
execute if score 1hz gremloop matches 8 run execute if score out math matches 80.. if entity @s[tag=bad] if score temp temp matches ..2 run spreadplayers ~ ~ 0 3 false @e[distance=..1,type=husk,tag=tater,limit=1,sort=nearest]
execute if score 1hz gremloop matches 8 run execute if score out math matches 80.. if entity @s[tag=bad] if score temp temp matches ..2 run particle angry_villager ~ ~4.5 ~ 0 0 0 0 1 force
#slowing
scoreboard players set temp temp 0
execute if score 1hz gremloop matches 8 if entity @s[tag=good] positioned ~-5 ~-5 ~-5 store result score temp temp run effect give @e[dx=10,dy=10,dz=10,type=husk,tag=tater] slowness 3 1
execute if score temp temp matches 1.. run particle heart ~ ~4.5 ~ 0 0 0 0 1 force

#killing
scoreboard players set temp temp 1
execute if entity @s[nbt={AbsorptionAmount:0.0f}] run scoreboard players set temp temp 0


execute if score temp temp matches 0 run playsound minecraft:entity.armor_stand.break hostile @a ~ ~ ~
execute if score temp temp matches 0 run particle minecraft:block oak_planks ~ ~1.5 ~ 1.5 1.5 1.5 0 10
execute at @s if score temp temp matches 0 if entity @a[distance=..10,tag=strawhat,limit=1] run summon iron_golem ~ ~ ~ {Silent:1b,DeathLootTable:"empty",PersistenceRequired:1b,NoAI:1b,AbsorptionAmount:8f,Health:100f,Tags:["scarecrow","good","custom20hz"],Passengers:[{id:"minecraft:item_display",view_range:1000f,shadow_radius:0f,width:3f,height:4f,item_display:"head",Tags:["scarecrow","good","no_glow","ca.no_glowing"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-1f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:potato",Count:1b,tag:{CustomModelData:2}}}],ActiveEffects:[{Id:14,Amplifier:1b,Duration:1000000,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:100},{Name:generic.attack_damage,Base:0}]}
execute at @s if score temp temp matches 0 if entity @a[distance=..10,tag=strawhat,limit=1] run execute as @e[tag=scarecrow,distance=..3] at @s facing entity @p feet run tp @s ~ ~ ~ ~180 0
execute at @s if score temp temp matches 0 if entity @a[distance=..10,tag=strawhat,limit=1] if entity @s[tag=bad] run playsound minecraft:entity.player.levelup hostile @a ~ ~ ~ 1 2
execute if score temp temp matches 0 run function link:mobs/generic/voidkill
