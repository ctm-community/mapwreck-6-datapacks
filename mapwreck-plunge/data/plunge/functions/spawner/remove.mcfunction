# Remove the linked Swarmlord's glowing
execute as @e[type=marker,tag=plunge,tag=fuse] if score @s Plunge.SpawnerLink = @e[type=marker,tag=plunge,tag=chaos_spawner,sort=nearest,limit=1] Plunge.SpawnerLink on vehicle run effect clear @s glowing
execute as @e[type=marker,tag=plunge,tag=fuse] if score @s Plunge.SpawnerLink = @e[type=marker,tag=plunge,tag=chaos_spawner,sort=nearest,limit=1] Plunge.SpawnerLink run kill @s

# Remove self from the world
kill @s