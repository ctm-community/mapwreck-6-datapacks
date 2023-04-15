data modify storage pear:sliq_motion data set value {}

data modify storage pear:sliq_motion data.Motion set from entity @s Motion

summon potion ~ ~ ~ {Tags:["pear.sliq_potion","pear.new"],Item:{id:"minecraft:lingering_potion",Count:1b,tag:{CustomPotionColor:10700799,CustomPotionEffects:[{Id:9,Duration:40,Amplifier:69}]}}}

execute as @e[type=potion,tag=pear.sliq_potion,tag=pear.new] at @s run function pear:item_effects/sliquifier/potion_setup

kill @s