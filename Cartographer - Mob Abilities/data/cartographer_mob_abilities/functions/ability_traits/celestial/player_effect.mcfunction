playsound minecraft:entity.wither.ambient hostile @a[distance=..16] ~ ~ ~ 0.7 0.75
playsound minecraft:entity.witch.drink hostile @a[distance=..16] ~ ~ ~ 2 0.5

scoreboard players operation $amount ca.celest_steal = $damage ca.ability_dmg

scoreboard players operation @s bbl.heal_queue = $amount ca.celest_steal
function bb:call/hpm/mob/heal

particle minecraft:heart ~ ~1 ~ 0.3 0.2 0.3 0 4 normal