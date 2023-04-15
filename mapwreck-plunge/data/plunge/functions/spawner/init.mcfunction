# Initiate the uninitiated
tag @s add init

# Link the zombie marker with the spawner
execute on passengers run scoreboard players operation @s Plunge.SpawnerLink = @e[type=marker,tag=plunge,tag=chaos_spawner,sort=nearest,limit=1] Plunge.SpawnerLink

# Join the team for colour
team join Plunge @s

playsound entity.allay.item_taken hostile @a ~ ~ ~ 1 0.6
particle dust_color_transition 1 0 0 1 0 1 0 ~ ~ ~ 0 ~0.2 0 0.075 15