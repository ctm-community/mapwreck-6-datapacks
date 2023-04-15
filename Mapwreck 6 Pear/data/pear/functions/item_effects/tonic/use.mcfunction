advancement revoke @s only pear:use_tonic

scoreboard players set $rng_min bbl.rng 1
scoreboard players set $rng_max bbl.rng 10

function bb:lib/rng

execute if score $value bbl.rng matches 2 unless score @s pear.tonic_stacks matches 19.. run scoreboard players add @s pear.tonic_stacks 1
execute if score $value bbl.rng matches 2 run playsound minecraft:entity.bat.death player @s ~ ~ ~ 0.35 0.5
execute if score $value bbl.rng matches 2 run particle minecraft:witch ~ ~0.5 ~ 0.5 0.3 0.5 0.3 20 normal

#execute if score @s pear.tonic_time matches 1.. run effect give @s instant_damage 1 1
#execute if score @s pear.tonic_time matches 1.. run tellraw @s {"text":"The tonic tastes vile when already under its effects!","color":"red","italic":false}

scoreboard players set @s pear.tonic_time 1800
function pear:item_effects/tonic/remove_stacks

playsound minecraft:entity.evoker.cast_spell player @s ~ ~ ~ 1 1.5
particle minecraft:effect ~ ~0.5 ~ 0.5 0.3 0.5 0.3 20 normal