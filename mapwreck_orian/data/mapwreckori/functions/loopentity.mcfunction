execute as @s[type=minecraft:stray,tag=haunted] at @s if entity @p[distance=18..] run function mapwreckori:haunt
execute store result score count mapwreckori.infected if entity @s[scores={ca.effect_infect=1..}]
execute as @s[predicate=mapwreckori:pot_rebirth] run function mapwreckori:pot_rebirth
execute as @s[predicate=mapwreckori:pot_berserk] run function mapwreckori:pot_berserk

execute unless score cyan_teleporter mapwreckori.teleporter matches 1.. as @s[x=-98,y=15,z=157,dx=41,dy=11,dz=26,type=minecraft:item,nbt={Item:{id:"minecraft:disc_fragment_5",tag:{haunted:1b}}}] run function mapwreckori:open_teleporter

kill @s[tag=killnomount,predicate=!mapwreckori:mount_cleanup]
