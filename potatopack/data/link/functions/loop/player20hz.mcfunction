#This function is run on all players at the hz in the filename
##v Spawn in detection v
##execute as @a[x=-8,z=-8,y=255,dx=32,dy=1,dz=32] run function link:spawnin

#Item branch
##execute if entity @s[advancements={items:invchange=true}] run function items:invchange
advancement revoke @s[advancements={items:invchange=true}] only items:invchange
