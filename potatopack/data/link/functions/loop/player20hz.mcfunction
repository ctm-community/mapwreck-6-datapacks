#This function is run on all players at the hz in the filename
##v Spawn in detection v
##execute as @a[x=-8,z=-8,y=255,dx=32,dy=1,dz=32] run function link:spawnin



#Check if you used a carrot sticky poopoo bear
execute if entity @s[scores={linkcarrot=1..}] run function link:items/wands/attemp
scoreboard players set @s[scores={linkcarrot=1..}] linkcarrot 0

#Red is a jerk
execute if score @s redisajerk matches 1.. run function link:redisajerk/player_dies
execute if score @s redisajerk2 matches 1 run function link:redisajerk/player_respawns