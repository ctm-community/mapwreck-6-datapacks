#Cicada 20hz
scoreboard players set @s wing1 0
scoreboard players set @s wing2 0
scoreboard players set @s arms 0

#spawn things around it
execute if entity @s[tag=!cicadaspawned] run summon armor_stand ~ ~1 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,ShowArms:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["cicadawing1","cicadawing","custom20hz"],Pose:{LeftArm:[89f,335f,331f],RightArm:[89f,33f,27f],Head:[190f,0f,14f]},ArmorItems:[{},{},{},{id:"minecraft:white_banner",Count:1b,tag:{BlockEntityTag:{Base:15,Patterns:[{Pattern:ss,Color:7},{Pattern:bri,Color:7},{Pattern:cbo,Color:15},{Pattern:tts,Color:8},{Pattern:gru,Color:15},{Pattern:gra,Color:8}]}}}]}
execute if entity @s[tag=!cicadaspawned] run summon armor_stand ~ ~1 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,ShowArms:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["cicadawing2","cicadawing","custom20hz"],Pose:{LeftArm:[89f,335f,331f],RightArm:[89f,33f,27f],Head:[190f,0f,-14f]},ArmorItems:[{},{},{},{id:"minecraft:white_banner",Count:1b,tag:{BlockEntityTag:{Base:15,Patterns:[{Pattern:ss,Color:7},{Pattern:bri,Color:7},{Pattern:cbo,Color:15},{Pattern:tts,Color:8},{Pattern:gru,Color:15},{Pattern:gra,Color:8}]}}}]}
execute if entity @s[tag=!cicadaspawned] run summon armor_stand ~ ~1 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,ShowArms:1b,Marker:1b,Invisible:0b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["cicadaarms","custom20hz"],Pose:{LeftArm:[266f,0f,0f],RightArm:[268f,0f,0f],LeftLeg:[268f,348f,0f],RightLeg:[268f,13f,0f],Head:[180f,0f,0f]}}
tag @s add cicadaspawned

#Seeing a player
execute if score 5hz gremloop matches 3 if entity @s[tag=!angry] positioned ~-7 ~-7 ~-7 if entity @a[dx=14,dy=14,dz=14,predicate=!link:sneaking] at @s run function link:mobs/cicadaangry

##sounds and data
data modify storage game:mob Mob set from entity @s {}
execute store result score hurt temp run data get storage game:mob Mob.HurtTime
execute store result score absorb temp run data get storage game:mob Mob.AbsorptionAmount 1000

execute if score hurt temp matches 10 unless score absorb temp matches 0 run playsound minecraft:entity.turtle.egg_break hostile @a ~ ~ ~ 1 1

#Adjust out match for ambient sounds, ideally this should be high (95+)
scoreboard players set in math 1
scoreboard players set in1 math 100
function tools:rng/range
execute if score 1hz gremloop matches 2 if score out math matches 90.. if score cicadascream temp matches 0 run playsound minecraft:mob.cicada hostile @a[distance=..16] ~ ~ ~ 1 1
execute if score 1hz gremloop matches 2 if score out math matches 90.. run scoreboard players set cicadascream temp 1

execute if score absorb temp matches 0 run playsound minecraft:entity.ghast.death hostile @a ~ ~ ~ 1 0.5
execute if score absorb temp matches 0 run kill @s