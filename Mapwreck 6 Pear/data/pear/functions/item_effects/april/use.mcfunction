advancement revoke @s only pear:use_april

tag @s add pear.taunting
scoreboard players set @s pear.april_time 181

data modify storage pear:april owner set value {}
data modify storage pear:april owner set from entity @s Owner

function pear:item_effects/april/apply

execute as @e[type=#bb:hostile,distance=..16] at @s run function pear:item_effects/april/blindfold

schedule function pear:item_effects/april/flaunt 4t replace