#yeets all spawners
setblock -201 165 245 air
setblock -212 166 238 air
setblock -211 166 228 air
setblock -198 165 227 air
setblock -190 165 233 air
setblock -188 164 245 air

kill @e[type=marker,tag=custom20hz,tag=bossspawner]

#remove mobs
execute as e1d386aa-2478-413f-9acc-b2fd21c3da45 at @s as @e[distance=..25,tag=carrot] at @s run function link:mobs/generic/voidkill
execute as e1d386aa-2478-413f-9acc-b2fd21c3da45 at @s as @e[distance=..25,tag=tater] at @s run function link:mobs/generic/voidkill
execute as e1d386aa-2478-413f-9acc-b2fd21c3da45 at @s as @e[distance=..25,tag=bhopper] at @s run function link:mobs/generic/voidkill
execute as e1d386aa-2478-413f-9acc-b2fd21c3da45 at @s as @e[distance=..25,tag=cicada] at @s run function link:mobs/generic/voidkill