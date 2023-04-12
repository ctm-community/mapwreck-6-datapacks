#Happens when the player defeats the boss

#state
scoreboard players set active boss16 2
scoreboard players set bosstime boss16 0
scoreboard players set digup boss16 0

#biome change
schedule function link:boss/biomefunny 1s

#displays
execute at e1d386aa-2478-413f-9acc-b2fd21c3da45 run function link:area16/yeetbossdisplays

#bossbar
bossbar set a16boss players

#kill any remains
function link:boss/killboss
kill @e[type=bat,tag=boss16bat]

kill @e[type=minecraft:item_display,tag=boss16spike]

#sound
execute as @a at @s run playsound minecraft:sfx.win player @s ~ ~ ~

#Firework
execute at e1d386aa-2478-413f-9acc-b2fd21c3da45 run summon firework_rocket ~ ~ ~ {Life:0,LifeTime:1,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;655360]}]}}}}