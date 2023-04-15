# Ensure death return marker is dead
kill 5458bbd8-5458-bbd8-5458-bbd85458bbd8

scoreboard players add @s mapwreckori.void_trigger 0
execute at @s if entity @s[x=-126,y=-0.6,z=132,dx=161,dy=-10,dz=85] run scoreboard players set @s mapwreckori.void_trigger 1
execute at @s if entity @s[x=-273,y=106,z=155,dx=166,dy=-6,dz=169] run scoreboard players set @s mapwreckori.void_trigger 2

execute if score @s mapwreckori.void_trigger matches -1 run effect give @s minecraft:instant_damage 1 0 true
execute if score @s mapwreckori.void_trigger matches ..-2 run effect give @s minecraft:instant_damage 1 2 true
execute if score @s mapwreckori.void_trigger matches ..-1 run scoreboard players set @s mapwreckori.void_trigger 0
execute if score @s mapwreckori.void_trigger matches 0 at @s if block ~ ~-0.1 ~ #mapwreckori:stable run function mapwreckori:void/track
execute if score @s mapwreckori.void_trigger matches 1 run function mapwreckori:void/return
execute if score @s mapwreckori.void_trigger matches 2.. run function mapwreckori:void/return_harder
