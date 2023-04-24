summon marker ~ ~ ~ {UUID:[I;1413624527,1948467303,-1080809217,1852075490]}
tp 544232cf-7423-4067-bf94-28ff6e646de2 @s

execute store result score 544232cf-7423-4067-bf94-28ff6e646de2 simple_blocks.yaw run data get entity 544232cf-7423-4067-bf94-28ff6e646de2 Rotation[0] 10
execute store result score 544232cf-7423-4067-bf94-28ff6e646de2 simple_blocks.pitch run data get entity 544232cf-7423-4067-bf94-28ff6e646de2 Rotation[1] 10

execute unless score @s simple_blocks.yaw matches -1800..1800 run scoreboard players operation @s simple_blocks.yaw = 544232cf-7423-4067-bf94-28ff6e646de2 simple_blocks.yaw
execute unless score @s simple_blocks.pitch matches -900..900 run scoreboard players operation @s simple_blocks.pitch = 544232cf-7423-4067-bf94-28ff6e646de2 simple_blocks.pitch

execute unless score @s simple_blocks.yaw = 544232cf-7423-4067-bf94-28ff6e646de2 simple_blocks.yaw run function simple_blocks:take
execute unless score @s simple_blocks.crafting_state matches ..-1 unless score @s simple_blocks.pitch = 544232cf-7423-4067-bf94-28ff6e646de2 simple_blocks.pitch run function simple_blocks:take

kill 544232cf-7423-4067-bf94-28ff6e646de2