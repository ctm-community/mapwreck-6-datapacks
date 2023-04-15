scoreboard players set $rng_min bbl.rng 1
scoreboard players set $rng_max bbl.rng 60

function bb:lib/rng

execute if score $value bbl.rng matches 2 run function pear:item_effects/sliquifier/do_slip

particle minecraft:dust 0.75 0 0.75 2 ~ ~0.25 ~ 0.3 0.1 0.3 0 1 normal

scoreboard players remove @s pear.effect_slip 1