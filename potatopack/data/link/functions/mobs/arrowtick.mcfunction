#Happens 20hz on arrows

#Damage scaling
execute if entity @s[scores={life=1}] run function link:mobs/arrowcheck

#killing if in ground
execute if score 1hz gremloop matches 3 run kill @s[nbt={inGround:1b}]