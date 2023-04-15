# Randomize Monster
scoreboard players add .Attempts Plunge.AllayRNG. 1
execute store result score @s Plunge.AllayPhase. run time query gametime
scoreboard players operation @s Plunge.AllayPhase. *= .Attempts Plunge.AllayRNG.
scoreboard players operation @s Plunge.AllayPhase. *= . Plunge.AllayRNG.
scoreboard players operation @s Plunge.AllayPhase. *= ! Plunge.AllayRNG.
scoreboard players operation @s Plunge.AllayPhase. /= ? Plunge.AllayRNG.
scoreboard players operation @s Plunge.AllayPhase. *= . Plunge.AllayRNG.
scoreboard players operation @s Plunge.AllayPhase. *= ! Plunge.AllayRNG.
scoreboard players set @s Plunge.AllayMod. 4
scoreboard players operation @s Plunge.AllayPhase. %= @s Plunge.AllayMod.

execute as @s[scores={Plunge.AllayPhase.=0}] run summon cave_spider ~ ~ ~ {DeathLootTable:"none",Health:5f,Tags:["invi-summoned"],Attributes:[{Name:generic.max_health,Base:5},{Name:generic.movement_speed,Base:0.35},{Name:generic.attack_damage,Base:3},{Name:generic.armor,Base:-100}]}
execute as @s[scores={Plunge.AllayPhase.=1}] run summon endermite ~ ~ ~ {DeathLootTable:"none",Health:8f,Tags:["invi-summoned"],Attributes:[{Name:generic.max_health,Base:8},{Name:generic.knockback_resistance,Base:0.9},{Name:generic.movement_speed,Base:0.35},{Name:generic.attack_damage,Base:3},{Name:generic.armor,Base:-100}]}
execute as @s[scores={Plunge.AllayPhase.=2}] run summon skeleton ~ ~ ~ {DeathLootTable:"none",Health:20f,Tags:["invi-summoned"],HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:power",lvl:2s}]}},{}],HandDropChances:[0.000F,0.085F],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;500468801,-733851838,-1886892432,-1021428205],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOWRlZGRkYWRlZjkzNWI3MmNmMGNmNDg0ZTQwODZlYzA0ZGE0YzUyODI5NDIyYTI2YTI4MmQwNTY3Y2QyMjE5In19fQ=="}]}}}}],ArmorDropChances:[0.085F,0.085F,0.085F,0.000F],ActiveEffects:[{Id:2,Amplifier:100b,Duration:200000,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:20},{Name:generic.knockback_resistance,Base:1},{Name:generic.movement_speed,Base:0},{Name:generic.armor,Base:-100}]}
execute as @s[scores={Plunge.AllayPhase.=3}] run summon zombie ~ ~ ~ {DeathLootTable:"none",Health:20f,IsBaby:0b,Tags:["invi-summoned"],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:7565352}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:4956426}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:761344}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1933439209,1427524381,-1174379532,1138101984],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzBiNjJmY2Q2OTQ5ZTQyNTlkNDk5YjdhYjllNWFhZTQ0OTdmNWVmZTU2MWEwYWVjNDczODk4MTk4OWRhZjgwIn19fQ=="}]}}}}],ArmorDropChances:[0.000F,0.000F,0.000F,0.000F],Attributes:[{Name:generic.max_health,Base:20},{Name:generic.movement_speed,Base:0.3},{Name:generic.armor,Base:-100}]}

data modify entity @e[tag=invi-summoned,sort=nearest,limit=1] Motion set from entity @s Motion

playsound minecraft:entity.zombie_villager.cure hostile @a ~ ~ ~ 1 1 0
particle block spawner ~ ~ ~ 0 0 0 0.2 10