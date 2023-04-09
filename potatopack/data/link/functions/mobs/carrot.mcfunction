#20hz on carrot witch

execute anchored eyes positioned ^ ^ ^1 as @e[distance=..1,tag=!carrotcheck,type=arrow] run function link:mobs/carrotcheck

##sounds and data
data modify storage game:mob Mob set from entity @s {}
execute store result score hurt temp run data get storage game:mob Mob.HurtTime
execute store result score absorb temp run data get storage game:mob Mob.AbsorptionAmount 1000

execute if score hurt temp matches 10 unless score absorb temp matches 0 run playsound minecraft:entity.player.big_fall hostile @a ~ ~ ~ 1 0.5

#Adjust out match for ambient sounds, ideally this should be high (95+)
scoreboard players set in math 1
scoreboard players set in1 math 100
function tools:rng/range
execute if score 5hz gremloop matches 1 if score out math matches 90.. run playsound minecraft:entity.camel.eat hostile @a ~ ~ ~ 1 0.5

execute if score absorb temp matches 0 run playsound minecraft:entity.husk.death hostile @a ~ ~ ~ 1 0.8
execute if score absorb temp matches 0 on passengers run function link:mobs/generic/voidkill
execute if score absorb temp matches 0 run kill @s