#creates more stands lol

summon armor_stand ^ ^ ^-2 {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:0b,Invisible:1b,Tags:["custom20hz","generic","water","quad"],DisabledSlots:4144959}
execute positioned ^ ^ ^-2 as @e[distance=..2,type=armor_stand,tag=quad,tag=carrotproj,limit=1,sort=nearest] at @s facing entity @a[distance=..3,limit=1,sort=nearest] feet facing ^ ^ ^-1 run tp @s ~ ~ ~ ~ ~
execute positioned ^ ^ ^-2 run tag @e[distance=..2,type=armor_stand,tag=quad,tag=carrotproj,limit=1,sort=nearest] remove quad

execute positioned ^ ^ ^-1 facing ^-2 ^ ^ run summon armor_stand ^ ^ ^1 {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:0b,Invisible:1b,Tags:["custom20hz","generic","water","quad"],DisabledSlots:4144959}
execute positioned ^ ^ ^-1 facing ^-2 ^ ^ positioned ^ ^ ^1 as @e[distance=..2,type=armor_stand,tag=quad,tag=carrotproj,limit=1,sort=nearest] at @s facing entity @a[distance=..3,limit=1,sort=nearest] feet facing ^ ^ ^-1 run tp @s ~ ~ ~ ~ ~
execute positioned ^ ^ ^-1 facing ^-2 ^ ^ positioned ^ ^ ^1 run tag @e[distance=..2,type=armor_stand,tag=quad,tag=carrotproj,limit=1,sort=nearest] remove quad

execute positioned ^ ^ ^-1 facing ^2 ^ ^ run summon armor_stand ^ ^ ^1 {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:0b,Invisible:1b,Tags:["custom20hz","generic","water","quad"],DisabledSlots:4144959}
execute positioned ^ ^ ^-1 facing ^2 ^ ^ positioned ^ ^ ^1 as @e[distance=..2,type=armor_stand,tag=quad,tag=carrotproj,limit=1,sort=nearest] at @s facing entity @a[distance=..3,limit=1,sort=nearest] feet facing ^ ^ ^-1 run tp @s ~ ~ ~ ~ ~
execute positioned ^ ^ ^-1 facing ^2 ^ ^ positioned ^ ^ ^1 run tag @e[distance=..2,type=armor_stand,tag=quad,tag=carrotproj,limit=1,sort=nearest] remove quad