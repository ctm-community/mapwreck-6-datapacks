#HAppens when boss begins

#state
scoreboard players set active boss16 1
scoreboard players set bosstime boss16 0
scoreboard players set digup boss16 0

#failsafe
function link:boss/killboss
kill @e[type=bat,tag=boss16bat]

#pink mode
scoreboard players set pink boss16 0
execute if entity @a[limit=1,sort=nearest,nbt={Inventory:[{id:"minecraft:pink_dye"}]}] run scoreboard players set pink boss16 1

#displays
function link:area16/yeetbossdisplays

#remove spawners
function link:boss/yeetspawners

#grab everyone
execute as e1d386aa-2478-413f-9acc-b2fd21c3da45 at @s run tp @a[distance=10..,gamemode=!creative,gamemode=!spectator] @s

#biome change
function link:boss/biomebad

#bosshp
execute unless score potato boss16 matches 1.. run scoreboard players set hp boss16 10
execute if score potato boss16 matches 1.. run scoreboard players set hp boss16 6

#bossbar
scoreboard players set temp temp 0
execute if score carrot boss16 matches 1 run scoreboard players add temp temp 1
execute if score potato boss16 matches 1 run scoreboard players add temp temp 1
execute if score beetroot boss16 matches 1 run scoreboard players add temp temp 1
execute if score wheat boss16 matches 1 run scoreboard players add temp temp 1

execute if score temp temp matches 4.. run bossbar set a16boss name {"text":" Charles ","color":"dark_red","italic":false}
execute if score temp temp matches 3 run bossbar set a16boss name {"text":"☠ Charles ☠","color":"dark_red","italic":false}
execute if score temp temp matches 2 run bossbar set a16boss name {"text":"☠☠ Charles ☠☠","color":"dark_red","italic":false}
execute if score temp temp matches 1 run bossbar set a16boss name {"text":"☠☠☠ Charles ☠☠☠","color":"dark_red","italic":false}
execute if score temp temp matches ..0 run bossbar set a16boss name {"text":"☠☠☠☠ Charles ☠☠☠☠","color":"dark_red","italic":false}

scoreboard players set in math 1
scoreboard players set in1 math 100
function tools:rng/range
execute if score out math matches ..10 run bossbar set a16boss name {"text":"UwU Charles UwU","color":"dark_red","italic":false}
bossbar set a16boss color red

execute if score pink boss16 matches 1 run bossbar set a16boss color pink
execute if score pink boss16 matches 1 run bossbar set a16boss name {"text":"UwU Charletee UwU","color":"light_purple","italic":false}

bossbar set a16boss max 60
bossbar set a16boss value 0

bossbar set a16boss players @a

bossbar set a16boss style notched_6
execute unless score potato boss16 matches 1.. run bossbar set a16boss style notched_10

#spawn boss 
execute positioned -201 154 245 run function link:boss/generateboss
data merge entity ba2946fa-6d05-4370-bdda-340c336e5bef {NoAI:1b}

#foreload
forceload add ~20 ~20 ~-20 ~-20