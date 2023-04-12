#Bosstick for when boss is in active state 1, on and at interaction entity
##e1d386aa-2478-413f-9acc-b2fd21c3da45 is the main interaction entity

##c138d663-3942-4fcf-a193-5bf8481dfddf is fake hole

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