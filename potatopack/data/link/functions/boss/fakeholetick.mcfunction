#fake hole ticking
scoreboard players add @s life 1

kill @s[scores={life=60..}]

#effects
playsound minecraft:block.gravel.break hostile @a ~ 165 ~ 1 0.5
particle block dirt ~ ~ ~ 1.5 1.5 1.5 0.3 10
particle block granite ~ ~ ~ 1.5 1.5 1.5 0.1 10