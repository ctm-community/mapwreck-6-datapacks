#Exploits carto to make a volley
##ba2946fa-6d05-4370-bdda-340c336e5bef

#tag @s add ca.sh_arrow
tag @s add ca.barrage
tag @s add ca.has_active
tag @s add ca.sh_potion
execute if score wheat boss16 matches 1.. run tag @s add ca.accelerate+
execute unless score wheat boss16 matches 1.. run tag @s add ca.accelerate+++

item replace entity @s weapon.offhand with poisonous_potato{CustomModelData:1,CustomPotionEffects:[{Id:2,Amplifier:0b,Duration:200,ShowParticles:1b},{Id:7,Amplifier:1b,Duration:20,ShowParticles:0b}],CustomPotionColor:1925899}
execute unless score carrot boss16 matches 1.. run item replace entity @s weapon.offhand with poisonous_potato{CustomModelData:1,CustomPotionEffects:[{Id:2,Amplifier:0b,Duration:400,ShowParticles:1b},{Id:7,Amplifier:2b,Duration:20,ShowParticles:0b}],CustomPotionColor:1925899}

#slowing
#effect give @s slowness 7 10 true

#fire!
data modify entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base set value 0d
data modify entity @s Attributes[{Name:"minecraft:generic.attack_damage"}].Base set value 60d
tag @s add ca.attack_override

tag @s remove volley