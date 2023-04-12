#Happens when boss ability ends

#reset token in case player hits boss mid attack
function cartographer_mob_abilities:helper/token/mob_manage/reset_tokened

#main stuff
scoreboard players set @s cooldown 10000
data merge entity @s {NoAI:0b}
data modify entity @s Attributes[{Name:"minecraft:generic.attack_damage"}].Base set value -10d
execute if score wheat boss16 matches 1.. run data modify entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base set value 0.35d
execute unless score wheat boss16 matches 1.. run data modify entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base set value 0.44d
#data modify entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base set value 0d
item replace entity @s weapon.offhand with air

#next phase
title @a title {"text":"RUN","color":"#FF0000","italic":false}