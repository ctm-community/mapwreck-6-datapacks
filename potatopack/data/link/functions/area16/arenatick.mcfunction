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
