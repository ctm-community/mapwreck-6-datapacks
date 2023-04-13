execute as @s[type=minecraft:stray,tag=haunted] at @s if entity @p[distance=18..] run function mapwreckori:haunt
execute unless score cyan_teleporter mapwreckori.teleporter matches 1.. as @s[x=-98,y=15,z=157,dx=41,dy=11,dz=26,type=minecraft:item,nbt={Item:{id:"minecraft:disc_fragment_5",tag:{haunted:1b}}}] run function mapwreckori:open_teleporter
