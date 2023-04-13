#Happens on each body segment of the boss, 20hz


scoreboard players set temp temp 0
execute as @e[distance=1.7..6,type=item_display,tag=a16bosspiece] run function link:boss/checkbodies
execute at @e[distance=1.7..6,type=item_display,tag=a16bosspiece] if score @s pieceid = @e[distance=..1,type=item_display,tag=a16bosspiece,limit=1,sort=nearest] temp run tag @e[distance=..1,type=item_display,tag=a16bosspiece,limit=1,sort=nearest] add tofollow
execute at @s facing entity @e[distance=1..6,type=item_display,tag=a16bosspiece,tag=tofollow,limit=1,sort=nearest] feet run tp @s ^ ^ ^0.12 ~ ~
execute at @s facing entity @e[distance=1..6,type=item_display,tag=a16bosspiece,tag=tofollow,limit=1,sort=nearest] feet run tp @s ^ ^ ^0.12 ~ ~
execute at @s facing entity @e[distance=1..6,type=item_display,tag=a16bosspiece,tag=tofollow,limit=1,sort=nearest] feet run tp @s ^ ^ ^0.12 ~ ~
execute at @s facing entity @e[distance=1..6,type=item_display,tag=a16bosspiece,tag=tofollow,limit=1,sort=nearest] feet run tp @s ^ ^ ^0.12 ~ ~
execute at @s facing entity @e[distance=1..5,type=item_display,tag=a16bosspiece,tag=tofollow,limit=1,sort=nearest] feet run tp @s ^ ^ ^0.12 ~ ~
tag @e[distance=..5,type=item_display,tag=a16bosspiece,limit=1,sort=nearest,tag=tofollow] remove tofollow


#damage
scoreboard players set temp temp 777
execute at @s positioned ~-0.8 ~-1.5 ~-0.8 as @a[dx=1.6,dy=3,dz=1.6,limit=1] run function link:boss/bossdamagesplayer
scoreboard players set temp temp 0

#wiggle
scoreboard players add wiggle temp 1
execute if score wiggle temp matches 5.. run scoreboard players set wiggle temp 1
execute if score bosstime boss16 matches 1025.. if score wiggle temp matches 1 at @s run tp @s ~0.2 ~ ~
execute if score bosstime boss16 matches 1025.. if score wiggle temp matches 2 at @s run tp @s ~-0.2 ~ ~
execute if score bosstime boss16 matches 1025.. if score wiggle temp matches 3 at @s run tp @s ~ ~ ~0.2
execute if score bosstime boss16 matches 1025.. if score wiggle temp matches 4 at @s run tp @s ~ ~ ~-0.2