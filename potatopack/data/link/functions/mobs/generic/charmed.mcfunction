#Happens 1hz on mobs with tags custom1hz and charmed
#charm is the scoreboard that controls how long the mob is charmed for.
#charm2 controls how often the mob will attempt to apply agro. 
#charm uses and clears weakness!!!!! So if you want a temp charm with weakness in balancing, be wary.

##Code, tags, predicates taken from revival and repurposed for 1.19.4

#team join
team join green @s[team=!green]
team join red @s[scores={charm=2}]
team join red @s[scores={charm=4}]
team join yellow @s[scores={charm=6}]
team join yellow @s[scores={charm=8}]

#Agro and first time detection
scoreboard players remove @s charm2 1

#glowing
execute if entity @a[distance=..25,limit=1] run effect give @s glowing 5 0 true

#first time
execute if entity @s[scores={charm2=..-1},nbt={Silent:1b}] run tag @s add silent
execute if entity @s[scores={charm2=..-1},nbt=!{Silent:1b}] run data merge entity @s {Silent:0b}
execute if entity @s[scores={charm2=..-1}] store result score @s charmkb run data get entity @s Attributes[{Name:"minecraft:generic.knockback_resistance"}].Base 10000

#Targetting adjustment for skeletons, moves mainhand data to offhand if targetting player
#Swaps if entity is type projectilewielder
execute if entity @s[type=#link:projectilewielder,predicate=link:targetplayer,tag=!charmswapped] run function link:mobs/generic/charmswap
execute if entity @s[type=#link:projectilewielder,predicate=!link:targetplayer,tag=charmswapped] run function link:mobs/generic/charmswap2

#agro, change charm2=..7 tp down to 0 for faster re-agro when not by player
scoreboard players add @s[predicate=link:targetsomething,scores={charm2=..7}] charm2 1
execute if entity @s[predicate=link:targetplayer] run scoreboard players set @s charm2 0

#execute if entity @s[scores={charm2=..0}] if block ~ ~3 ~ #airish run summon snowball ~ ~3 ~ {Silent:1b,Motion:[0.0,-1.0,0.0],Tags:["charm"],Item:{id:"minecraft:air",Count:1b}}
#execute if entity @s[scores={charm2=..0}] unless block ~ ~3 ~ #airish if block ~ ~ ~1 #airish run summon snowball ~ ~ ~1 {Silent:1b,Motion:[0.0,0.0,-1.0],Tags:["charm"],Item:{id:"minecraft:air",Count:1b}}
#execute if entity @s[scores={charm2=..0}] unless block ~ ~3 ~ #airish unless block ~ ~ ~1 #airish if block ~ ~ ~-1 #airish run summon snowball ~ ~ ~-1 {Silent:1b,Motion:[0.0,0.0,1.0],Tags:["charm"],Item:{id:"minecraft:air",Count:1b}}
#data modify entity @e[distance=..4,limit=1,type=snowball,tag=charm,sort=nearest] Owner set from entity @e[distance=..16,type=#minecraft:hasai,type=!player,tag=!charmed,limit=1] UUID
execute if entity @s[scores={charm2=..0}] run data modify entity @s Silent set value 1b
execute if entity @s[scores={charm2=..0}] run data modify entity @s Attributes[{Name:"minecraft:generic.knockback_resistance"}].Base set value 10d
execute if entity @s[scores={charm2=..0}] run damage @s 0.001 minecraft:fall by @e[distance=..16,type=#minecraft:hasai,type=!player,tag=!charmed,limit=1,sort=nearest]
execute if entity @s[scores={charm2=..0}] run effect give @s weakness 2 100 true
scoreboard players set @s[scores={charm2=..0}] charm2 10

#un-silent and restore kb, 1 less than above
execute if entity @s[scores={charm2=9},tag=!silent] run data modify entity @s Silent set value 0b
execute if entity @s[scores={charm2=9},tag=!silent] run effect clear @s weakness
execute if entity @s[scores={charm2=9}] store result entity @s Attributes[{Name:"minecraft:generic.knockback_resistance"}].Base double 0.0001 run scoreboard players add @s charmkb 0

#remove charm
scoreboard players remove @s[scores={charm=1..}] charm 1
execute if entity @s[type=#link:projectilewielder,tag=charmswapped,scores={charm=0}] run function link:mobs/generic/charmswap2
execute if entity @s[scores={charm=0},tag=!silent] run data modify entity @s Silent set value 0b
effect clear @s[scores={charm=0}] glowing
tag @s[scores={charm=0}] remove charmed
team leave @s[scores={charm=0}]
execute if entity @s[scores={charm=0}] store result entity @s Attributes[{Name:"minecraft:generic.knockback_resistance"}].Base double 0.0001 run scoreboard players add @s charmkb 0
scoreboard players reset @s[scores={charm=0}] charm