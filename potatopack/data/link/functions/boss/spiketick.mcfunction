#happens 20hz on the spikes
scoreboard players add @s temp 1

#movement
execute if entity @s[scores={temp=1}] run tp @s ~ ~-5 ~
execute if entity @s[scores={temp=1..}] at @s facing ~ ~1 ~ run tp @s ^ ^ ^0.1 ~ ~

#damage
scoreboard players set temp temp 777
execute at @s positioned ~-0.6 ~-1.5 ~-0.6 as @a[dx=1.2,dy=2.5,dz=1.2,limit=1] run function link:boss/bossdamagesplayer
scoreboard players set temp temp 0

#effects
playsound minecraft:block.gravel.break hostile @a ~ 165 ~ 0.1 0.5
execute if score 5hz gremloop matches 1 unless block ~ ~ ~ #airish run particle block dirt ~ ~2 ~ 0.5 1.5 0.5 0.3 5
execute if score 5hz gremloop matches 1 unless block ~ ~ ~ #airish run particle block granite ~ ~2 ~ 0.5 1.5 0.5 0.3 5

#finish
kill @s[scores={temp=50..}]