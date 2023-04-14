scoreboard players add @s Plunge.CreeperTimer 1
data modify entity @s ignited set value false
data modify entity @s Fuse set value 150
data modify entity @s NoAI set value true
data modify entity @s powered set value true
data modify entity @s Attributes[{id:"minecraft:generic.max_health"}].Base set value 12
data modify entity @s Health set value 12
particle dust_color_transition 1 0 0 3 0 1 0 ~ ~0.75 ~ 0.1 0.5 0.1 0.01 2
particle dust_color_transition 0 1 0 3 1 0 0 ~ ~0.75 ~ 0.1 0.5 0.1 0.01 2

execute as @s[scores={Plunge.CreeperTimer=11}] run effect give @s glowing 1 1 true
execute as @s[scores={Plunge.CreeperTimer=11}] run playsound minecraft:entity.player.attack.sweep hostile @a ~ ~ ~ 2 0.5

execute as @s[scores={Plunge.CreeperTimer=21}] run effect clear @s glowing
execute as @s[scores={Plunge.CreeperTimer=21}] run playsound minecraft:entity.player.attack.sweep hostile @a ~ ~ ~ 2 0.65

execute as @s[scores={Plunge.CreeperTimer=30}] run effect give @s glowing 1 1 true
execute as @s[scores={Plunge.CreeperTimer=30}] run playsound minecraft:entity.player.attack.sweep hostile @a ~ ~ ~ 2 0.80

execute as @s[scores={Plunge.CreeperTimer=39}] run effect clear @s glowing
execute as @s[scores={Plunge.CreeperTimer=39}] run playsound minecraft:entity.player.attack.sweep hostile @a ~ ~ ~ 2 0.95

execute as @s[scores={Plunge.CreeperTimer=47}] run effect give @s glowing 1 1 true
execute as @s[scores={Plunge.CreeperTimer=47}] run playsound minecraft:entity.player.attack.sweep hostile @a ~ ~ ~ 2 1.1

execute as @s[scores={Plunge.CreeperTimer=54}] run effect clear @s glowing
execute as @s[scores={Plunge.CreeperTimer=54}] run playsound minecraft:entity.player.attack.sweep hostile @a ~ ~ ~ 2 1.25

execute as @s[scores={Plunge.CreeperTimer=60}] run effect give @s glowing 1 1 true
execute as @s[scores={Plunge.CreeperTimer=60}] run playsound minecraft:entity.player.attack.sweep hostile @a ~ ~ ~ 2 1.4

execute as @s[scores={Plunge.CreeperTimer=65}] run effect clear @s glowing
execute as @s[scores={Plunge.CreeperTimer=65}] run playsound minecraft:entity.player.attack.sweep hostile @a ~ ~ ~ 2 1.55

execute as @s[scores={Plunge.CreeperTimer=69}] run effect give @s glowing 1 1 true
execute as @s[scores={Plunge.CreeperTimer=69}] run playsound minecraft:entity.player.attack.sweep hostile @a ~ ~ ~ 2 1.7

execute as @s[scores={Plunge.CreeperTimer=72}] run effect clear @s glowing
execute as @s[scores={Plunge.CreeperTimer=72}] run playsound minecraft:entity.player.attack.sweep hostile @a ~ ~ ~ 2 1.8

execute as @s[scores={Plunge.CreeperTimer=74}] run effect give @s glowing 1 1 true
execute as @s[scores={Plunge.CreeperTimer=74}] run playsound minecraft:entity.player.attack.sweep hostile @a ~ ~ ~ 2 2.0

execute as @s[scores={Plunge.CreeperTimer=75}] run summon creeper ~ ~ ~ {ignited:true,Fuse:1,ExplosionRadius:5}
execute as @s[scores={Plunge.CreeperTimer=75}] run tp @s ~ -100 ~
execute as @s[scores={Plunge.CreeperTimer=75}] run kill @s