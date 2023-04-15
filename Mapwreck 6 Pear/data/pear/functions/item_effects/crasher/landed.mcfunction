execute positioned ~ ~0.15 ~ run function pear:item_effects/crasher/vfx

tag @s remove ca.crashing

execute as @e[type=#cartographer_core:hostile,distance=0.1..3.75] at @s run function pear:item_effects/crasher/entity_crash

execute as @s at @s run function pear:item_effects/crasher/entity_crash_itself