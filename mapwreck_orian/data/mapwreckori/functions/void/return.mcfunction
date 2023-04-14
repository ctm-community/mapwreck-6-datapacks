#void return

execute at @s run summon minecraft:marker ~ ~ ~ {UUID: [I; 1415101400, 1415101400, 1415101400, 1415101400]}
execute store result entity 5458bbd8-5458-bbd8-5458-bbd85458bbd8 Pos[0] double 1 run scoreboard players get @s mapwreckori.void_return_x
execute store result entity 5458bbd8-5458-bbd8-5458-bbd85458bbd8 Pos[1] double 1 run scoreboard players get @s mapwreckori.void_return_y
execute store result entity 5458bbd8-5458-bbd8-5458-bbd85458bbd8 Pos[2] double 1 run scoreboard players get @s mapwreckori.void_return_z
execute as 5458bbd8-5458-bbd8-5458-bbd85458bbd8 at @s align xyz positioned ~0.5 ~ ~0.5 run teleport @s ~ ~ ~

effect give @s minecraft:slow_falling 1 0 true
execute at 5458bbd8-5458-bbd8-5458-bbd85458bbd8 run teleport @s ~ ~ ~
kill 5458bbd8-5458-bbd8-5458-bbd85458bbd8

execute at @s run playsound minecraft:item.chorus_fruit.teleport player @a ~ ~ ~ 1 1.2
scoreboard players set @s mapwreckori.void_trigger -1
