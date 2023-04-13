#Bosstick for when boss is in active state 1, on and at interaction entity
##e1d386aa-2478-413f-9acc-b2fd21c3da45 is the main interaction entity

##c138d663-3942-4fcf-a193-5bf8481dfddf is fake hole

#failsafes
kill @e[distance=..20,type=boat]

#time adding
scoreboard players add bosstime boss16 1

#hp bar
execute if score bosstime boss16 matches ..60 store result bossbar a16boss value run scoreboard players add bosstime boss16 0

#after start
scoreboard players set temp temp 10
execute if score bosstime boss16 matches 61.. if score potato boss16 matches 1.. store result bossbar a16boss value run scoreboard players operation temp temp *= hp boss16
scoreboard players set temp temp 6
execute if score bosstime boss16 matches 61.. unless score potato boss16 matches 1.. store result bossbar a16boss value run scoreboard players operation temp temp *= hp boss16

#execute on skeleton acting as front
execute as ba2946fa-6d05-4370-bdda-340c336e5bef at @s run function link:boss/headtick

#end boss if no nearby players and state is 1
execute if score active boss16 matches 1 positioned ~ ~4 ~ unless entity @a[distance=..24,limit=1] run function link:boss/endboss

#phases 1 and 2
execute if score bosstime boss16 matches 130 run function link:boss/fakehole
execute as c138d663-3942-4fcf-a193-5bf8481dfddf at @s run function link:boss/fakeholetick
execute if score bosstime boss16 matches 150 run function link:boss/choosehole
execute if score bosstime boss16 matches 210 run tellraw @a {"text":"The worm is vulnerable!","color":"red","italic":false}
execute if score bosstime boss16 matches 210 run data modify entity ba2946fa-6d05-4370-bdda-340c336e5bef Invulnerable set value 0b
execute if score bosstime boss16 matches 210 run effect give ba2946fa-6d05-4370-bdda-340c336e5bef weakness 2 100 false
execute if score bosstime boss16 matches 210..249 at ba2946fa-6d05-4370-bdda-340c336e5bef run particle ambient_entity_effect ~ ~0.5 ~ 0.549 0.490 0.490 1 2 normal
execute if score bosstime boss16 matches 210..249 at ba2946fa-6d05-4370-bdda-340c336e5bef run particle smoke ~ ~0.5 ~ 0.75 0.75 0.75 0 3 normal
execute if score bosstime boss16 matches 250 run data modify entity ba2946fa-6d05-4370-bdda-340c336e5bef Invulnerable set value 1b
execute if score bosstime boss16 matches 250 run tag ba2946fa-6d05-4370-bdda-340c336e5bef add volley
execute if score bosstime boss16 matches 251 if score wheat boss16 matches 1 run scoreboard players add bosstime boss16 110
#550 and 430 are end times cuz carto is bleah
execute if score bosstime boss16 matches 550 as ba2946fa-6d05-4370-bdda-340c336e5bef at @s run function link:boss/abilityenddetails
execute if score bosstime boss16 matches 551..850 if score 5hz gremloop matches 1 run function link:boss/generatespike
execute if score bosstime boss16 matches 871 run tag ba2946fa-6d05-4370-bdda-340c336e5bef add dig

#phase 3, 970 onwards
execute if score bosstime boss16 matches 970 positioned ~-0.4 ~-5 ~ run function link:boss/generateboss
execute if score bosstime boss16 matches 970 run data merge entity ba2946fa-6d05-4370-bdda-340c336e5bef {NoAI:1b}
execute if score bosstime boss16 matches 970..1020 run particle block dirt ~ 165 ~ 1 1 1 0.3 7
execute if score bosstime boss16 matches 970..1020 run particle block gravel ~ 165 ~ 1 1 1 0.3 7
execute if score bosstime boss16 matches 970..1020 run playsound minecraft:block.gravel.break hostile @a ~ 165 ~ 1 0.5
execute if score bosstime boss16 matches 970..1020 as ba2946fa-6d05-4370-bdda-340c336e5bef at @s facing ~ ~1 ~ run tp @s ^ ^ ^0.35 ~ ~
execute if score bosstime boss16 matches 1020 as @a at @s run playsound minecraft:sfx.wiggle hostile @s ~ ~ ~ 0.7 1
execute if score bosstime boss16 matches 1020 as @a at @s run function link:boss/generatespawners

#Once spawners dead
execute if score bosstime boss16 matches 1023.. if score spawners boss16 matches 0 run tag ba2946fa-6d05-4370-bdda-340c336e5bef add dig
execute if score bosstime boss16 matches 1023.. if score spawners boss16 matches 0 run scoreboard players remove @e[distance=..4,type=skeleton,tag=a16boss] temp 2
execute if score bosstime boss16 matches 1023.. if score spawners boss16 matches 0 unless entity ba2946fa-6d05-4370-bdda-340c336e5bef run scoreboard players set bosstime boss16 110
execute if score bosstime boss16 matches 1023.. if score spawners boss16 matches 0 unless entity ba2946fa-6d05-4370-bdda-340c336e5bef run scoreboard players set bosstime boss16 110


#boss is defeated 
execute if score hp boss16 matches 0 if score bosstime boss16 matches 1.. run scoreboard players set bosstime boss16 -1000
execute if score bosstime boss16 matches -1000 run data merge entity ba2946fa-6d05-4370-bdda-340c336e5bef {NoAI:1b}
execute if score bosstime boss16 matches -1000 run item replace entity ba2946fa-6d05-4370-bdda-340c336e5bef weapon.offhand with air
execute if score bosstime boss16 matches -1000 at ba2946fa-6d05-4370-bdda-340c336e5bef run summon bat ~ ~ ~ {Silent:1b,Invulnerable:1b,DeathLootTable:"empty",PersistenceRequired:1b,Tags:["boss16bat"],ActiveEffects:[{Id:14,Amplifier:0b,Duration:100000,ShowParticles:0b}]}
execute if score bosstime boss16 matches -1000..-950 if score 5hz gremloop matches 1..3 as @e[type=bat,tag=boss16bat,limit=1] at @s facing -200 168 240 run tp @s ^ ^ ^0.3 ~ ~
execute if score bosstime boss16 matches -950..-900 if score 5hz gremloop matches 1..3 as @e[type=bat,tag=boss16bat,limit=1] at @s facing -195 170 235 run tp @s ^ ^ ^0.3 ~ ~
execute if score bosstime boss16 matches -900..-850 if score 5hz gremloop matches 1..3 as @e[type=bat,tag=boss16bat,limit=1] at @s facing -200 172 230 run tp @s ^ ^ ^0.3 ~ ~
execute if score bosstime boss16 matches -850..-800 if score 5hz gremloop matches 1..3 as @e[type=bat,tag=boss16bat,limit=1] at @s facing entity @p feet run tp @s ^ ^ ^0.5 ~ ~
execute if score bosstime boss16 matches -1000..-800 run tp ba2946fa-6d05-4370-bdda-340c336e5bef @e[type=bat,tag=boss16bat,limit=1]
execute if score bosstime boss16 matches -799 run data merge entity ba2946fa-6d05-4370-bdda-340c336e5bef {NoAI:1b}
execute if score bosstime boss16 matches -799 run kill @e[type=bat,tag=boss16bat]
execute if score bosstime boss16 matches -799..-1 if score 1hz gremloop matches 1 run function link:boss/bosskilling
execute if score bosstime boss16 matches -799..-1 if score 1hz gremloop matches 11 run function link:boss/bosskilling