
#RNG
#\Set Values
#\\Min
scoreboard players set $rng_min bbl.rng 1
#\\Max
scoreboard players set $rng_max bbl.rng 8
#\Roll
function bb:lib/rng

execute if score $value bbl.rng matches 1 run particle minecraft:flame ~ ~.6 ~ 0.1 0.1 0.1 0.0001 1 normal
