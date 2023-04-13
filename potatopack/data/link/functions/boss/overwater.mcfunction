#happens when player is over water
#damage
function link:boss/bossdamagesplayer

#move towards boss
execute positioned ~ 166 ~ facing entity e1d386aa-2478-413f-9acc-b2fd21c3da45 feet run tp @s ^ ^ ^4
playsound minecraft:entity.generic.splash hostile @s ~ ~ ~

#warning
tellraw @s {"text":"Wat-er you doing?","color":"aqua","italic":false}
