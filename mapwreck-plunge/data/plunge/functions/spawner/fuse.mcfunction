execute at @s run particle flame ~ ~ ~ 0 0 0 0.01 10
execute at @s run playsound block.netherrack.step block @a ~ ~ ~ 0.25 0.75 
execute if score @s Plunge.SpawnerLink = @e[type=marker,tag=plunge,tag=chaos_spawner,sort=nearest,limit=1] Plunge.SpawnerLink if entity @s[distance=0..0.3] run function plunge:spawner/explode
execute if score @s Plunge.SpawnerLink = @e[type=marker,tag=plunge,tag=chaos_spawner,sort=nearest,limit=1] Plunge.SpawnerLink unless entity @s[distance=0..0.3] positioned as @s run tp @s ^ ^ ^-0.175