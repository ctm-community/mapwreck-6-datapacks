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

#Digging up
execute if entity @s[tag=digup] run scoreboard players add digup boss16 1
execute if entity @s[tag=digup] if score digup boss16 matches 1.. at @s facing -200 ~100 235 run tp @s ~ ~0.3 ~ ~ ~
execute if entity @s[tag=digup] if score digup boss16 matches 1.. run playsound minecraft:block.gravel.break hostile @a ~ 165 ~ 1 0.5
execute if entity @s[tag=digup] if score digup boss16 matches 1.. run particle block dirt ~ 165 ~ 1.5 1.5 1.5 0.3 10
execute if entity @s[tag=digup] if score digup boss16 matches 1.. run particle block granite ~ 165 ~ 1.5 1.5 1.5 0.1 10
execute if entity @s[tag=digup] if block ~ ~-1.3 ~ barrier run function link:boss/stopdigup
execute if entity @s[tag=digup] if block ~ ~-1.3 ~ oak_slab run function link:boss/stopdigup

#Boss spawning in
execute if score bosstime boss16 matches 0..30 facing -201 170 245 run tp @s ^ ^ ^0.3 ~ ~
execute if score bosstime boss16 matches 0..30 run playsound minecraft:block.gravel.break hostile @a ~ 165 ~ 1 0.5
execute if score bosstime boss16 matches 0..30 run particle block dirt ~ 163 ~ 1.5 1.5 1.5 0.3 10
execute if score bosstime boss16 matches 0..30 run particle block granite ~ 163 ~ 1.5 1.5 1.5 0.1 10
execute if score bosstime boss16 matches 31 at @s facing entity @p feet run tp @s ~ ~ ~ ~ ~
execute if score bosstime boss16 matches 50..52 run tag @s add dig

#volley
execute if entity @s[tag=volley] at @s facing entity @p feet run function link:boss/volley

#dealing damage
execute if score bosstime boss16 matches 210..249 if entity @s[nbt={HurtTime:10s}] run function link:boss/bossdamaged
#execute if entity @s[nbt={HurtTime:10s}] run say test

#face during wiggle
#execute if score bosstime boss16 matches 1025.. positioned -199.5 180 235.5 unless entity @s[distance=..2] at @s facing -199.5 180 235.5 run tp @s ^ ^ ^0.1
#execute if score bosstime boss16 matches 1025.. at @s facing entity @p feet run tp @s ^ ^ ^0.05 ~ ~

#failsafes
tag @s remove ca.rally_marked
effect clear @s slowness
effect clear @s weakness
effect clear @s blindness
effect clear @s nausea
effect clear @s mining_fatigue