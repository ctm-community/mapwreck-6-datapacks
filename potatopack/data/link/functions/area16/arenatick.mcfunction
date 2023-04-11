#20hz ticking as at the display in arena

execute unless score active boss16 matches 1.. positioned ~3 ~-2 ~3 unless block ~ ~ ~ farmland run setblock ~ ~ ~ farmland[moisture=7]
execute unless score active boss16 matches 1.. positioned ~-3 ~-2 ~-3 unless block ~ ~ ~ farmland run setblock ~ ~ ~ farmland[moisture=7]
execute unless score active boss16 matches 1.. positioned ~3 ~-2 ~-3 unless block ~ ~ ~ farmland run setblock ~ ~ ~ farmland[moisture=7]
execute unless score active boss16 matches 1.. positioned ~-3 ~-2 ~3 unless block ~ ~ ~ farmland run setblock ~ ~ ~ farmland[moisture=7]

execute if score active boss16 matches 1 run function link:boss/bosstick


#detecting crops
execute unless score carrot boss16 matches 1.. positioned ~3 ~-1 ~-3 if block ~ ~ ~ carrots run function link:area16/placecarrot
execute unless score potato boss16 matches 1.. positioned ~3 ~-1 ~3 if block ~ ~ ~ potatoes run function link:area16/placepotato
execute unless score beetroot boss16 matches 1.. positioned ~-3 ~-1 ~3 if block ~ ~ ~ beetroots run function link:area16/placebeetroot
execute unless score wheat boss16 matches 1.. positioned ~-3 ~-1 ~-3 if block ~ ~ ~ wheat run function link:area16/placewheat

#particles
execute if score carrot boss16 matches 1.. if score 5hz gremloop matches 4 unless score active boss16 matches 1.. positioned ~3 ~-1 ~-3 run particle happy_villager ~ ~ ~ 0.4 0.4 0.4 0 1
execute if score potato boss16 matches 1.. if score 5hz gremloop matches 4 unless score active boss16 matches 1.. positioned ~3 ~-1 ~3 run particle happy_villager ~ ~ ~ 0.4 0.4 0.4 0 1
execute if score beetroot boss16 matches 1.. if score 5hz gremloop matches 4 unless score active boss16 matches 1.. positioned ~-3 ~-1 ~3 run particle happy_villager ~ ~ ~ 0.4 0.4 0.4 0 1
execute if score wheat boss16 matches 1.. if score 5hz gremloop matches 4 unless score active boss16 matches 1.. positioned ~-3 ~-1 ~-3 run particle happy_villager ~ ~ ~ 0.4 0.4 0.4 0 1

#black wool, replace item nbt with whatever is relevant
execute if score active boss16 matches 2.. unless entity @e[distance=..2,type=item,tag=blackwool] run summon item ~ ~ ~ {NoGravity:1b,PickupDelay:20,Invulnerable:1b,Tags:["blackwool"],Item:{id:"minecraft:black_wool",Count:1b}}
#execute if score active boss16 matches 2.. run particle enchant ~ ~1.5 ~ 0 0 0 1 1
#execute if score active boss16 matches 2.. run particle enchant ~ ~ ~ 1 1 1 0 1
#execute if score active boss16 matches 2.. if score 1hz gremloop matches 3 run particle dust 0.000 0.000 0.000 1 ~ ~0.3 ~ 0.3 0.3 0.3 0 4 normal
#execute if score active boss16 matches 2.. if score 1hz gremloop matches 13 run particle dust 0.000 0.000 0.000 1 ~ ~0.3 ~ 0.3 0.3 0.3 0 4 normal
