#Bosstick for when boss is in active state 1, on and at interaction entity

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

