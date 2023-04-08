#Initial branch for custom mob effects. Mobs with the custom tag associated with the hz run this. 
#This function controls mob effects active in all zones, as well as branches into each zone's mobs.
##for example: execute if entity @s[tag=kingslime] run function link:mobs/kingslime

#branching
execute if entity @s[tag=boss] run function link:mobs/boss/10hz
