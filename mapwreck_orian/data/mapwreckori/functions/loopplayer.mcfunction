#player tick checks
execute as @s[gamemode=survival] at @s run function mapwreckori:void/tick

execute as @s[scores={mapwreckori.take_damage=1..},nbt={Inventory:[{Slot:-106b,tag:{broken_clock:1b}}]}] run function mapwreckori:boost
execute as @s[nbt={ActiveEffects:[{Id:15}]}] run scoreboard players set @s mapwreckori.embrace 1
execute as @s[nbt={ActiveEffects:[{Id:33}]}] run scoreboard players set @s mapwreckori.embrace 1

execute if score @s mapwreckori.embrace matches 1.. run function mapwreckori:embrace_set

scoreboard players set @s mapwreckori.take_damage 0
scoreboard players set @s mapwreckori.embrace 0
