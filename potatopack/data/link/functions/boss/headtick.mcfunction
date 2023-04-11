#Happens on the skeleton which is the chief front of the boss, 20hz
##ba2946fa-6d05-4370-bdda-340c336e5bef

tp @e[distance=..10,type=item_display,tag=a16bosspiece,scores={pieceid=15}] ~ ~1.3 ~ ~ ~

#digging, controlled by temp
execute if entity @s[tag=dig] run scoreboard players add @s temp 1
execute if entity @s[tag=dig,scores={temp=1}] run data merge entity @s {NoAI:1b}
execute if entity @s[tag=dig,scores={temp=1..}] at @s positioned ^ ^ ^0.1 run tp @s ~ ~-0.3 ~ ~ ~10
execute if entity @s[tag=dig,scores={temp=1..}] run playsound minecraft:block.gravel.break hostile @a ~ 165 ~ 1 0.5
execute if entity @s[tag=dig,scores={temp=1..}] run particle block dirt ~ 165 ~ 1.5 1.5 1.5 0.3 10
execute if entity @s[tag=dig,scores={temp=1..}] run particle block granite ~ 165 ~ 1.5 1.5 1.5 0.1 10
execute if entity @s[tag=dig,scores={temp=1..}] as @e[distance=..20,type=item_display,tag=a16bosspiece] at @s positioned ~ ~-5 ~ facing entity ba2946fa-6d05-4370-bdda-340c336e5bef feet at @s run tp @s ^ ^0.05 ^0.1
execute if entity @s[tag=dig,scores={temp=1..}] as @e[distance=..20,type=item_display,tag=a16bosspiece] at @s if block ~ ~-1.3 ~ #airish run tp @s ~ ~-0.2 ~
execute if entity @s[tag=dig,scores={temp=60..}] run function link:boss/killboss

#cooldown always 0 if ability not active

#volley
execute if entity @s[tag=volley] at @s facing entity @p feet run function link:boss/volley

#failsafes
tag @s remove ca.rally_marked