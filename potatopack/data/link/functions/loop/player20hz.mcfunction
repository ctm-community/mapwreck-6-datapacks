#This function is run on all players at the hz in the filename
##v Spawn in detection v
##execute as @a[x=-8,z=-8,y=255,dx=32,dy=1,dz=32] run function link:spawnin



#Check if you used a carrot sticky poopoo bear
execute if entity @s[scores={linkcarrot=1..}] run function link:items/wands/attemp
scoreboard players set @s[scores={linkcarrot=1..}] linkcarrot 0
