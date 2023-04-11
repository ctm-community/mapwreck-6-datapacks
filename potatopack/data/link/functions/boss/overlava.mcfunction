#HAppens when players jump over lava

#damage
function link:boss/bossdamagesplayer

#move towards boss
execute positioned ~ 166 ~ facing entity e1d386aa-2478-413f-9acc-b2fd21c3da45 feet run tp @s ^ ^ ^4
playsound minecraft:block.fire.extinguish hostile @s ~ ~ ~

#warning
tellraw @s {"text":"The heat of the lava swells and pushes you back","color":"red","italic":false}
