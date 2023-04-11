#Initial branch for custom mob effects. Mobs with the custom tag associated with the hz run this. 
#This function controls mob effects active in all zones, as well as branches into each zone's mobs.
##for example: execute if entity @s[tag=kingslime] run function link:mobs/kingslime


#life ticking
scoreboard players add @s life 1

#branching
execute as @s[tag=bossspawner] at @s run function link:boss/bossspawnertick
execute if entity @s[tag=boss] run function link:mobs/boss/20hz
execute if entity @s[tag=tater] run function link:mobs/tatertick
execute if entity @s[tag=spawngolem] run function link:mobs/spawngolem
execute if entity @s[tag=scarecrow] run function link:mobs/scarecrowtick
execute as @s[tag=cicada] at @s run function link:mobs/cicadatick
execute as @s[tag=cicadawing] at @s run function link:mobs/cicadawing
execute as @s[tag=cicadaarms] at @s run function link:mobs/cicadaarms
execute as @s[tag=bhopper,type=cow] at @s run function link:mobs/bhopper
execute as @s[tag=bhopper,type=item_display] at @s run function link:mobs/bhopper2
execute as @s[tag=carrot] at @s run function link:mobs/carrot
execute as @s[tag=carrotpot] at @s run function link:mobs/carrotpot
execute as @s[tag=carrotproj] at @s run function link:items/wands/carrot/tick
execute as @s[tag=potatoproj] at @s run function link:items/wands/potato/tick
execute as @s[tag=a16bosspiece] at @s run function link:boss/bodytick

