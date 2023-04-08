#This function is run on all players at the hz in the filename

#add 1 to life for all entities
scoreboard players add @s life 1

#branching and such
execute if entity @s[tag=custom20hz] run function link:mobs/custom20hz
