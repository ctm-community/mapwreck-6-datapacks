# Make spawn egg that places newest version of spawner and setups up spawner armor stand
execute as @e[type=endermite,tag=plunge] at @s run function plunge:spawner/spawner

# Check for uninitiated Swarmlords
execute as @e[type=zombie,tag=plunge,tag=swarmlord,tag=!init] at @s run function plunge:spawner/init

# Create a particle line between spawners and Swarmlords
execute as @e[type=marker,tag=plunge,tag=fuse] at @e[type=marker,tag=plunge,tag=chaos_spawner] if score @s Plunge.SpawnerLink = @e[type=marker,tag=plunge,tag=chaos_spawner,sort=nearest,limit=1] Plunge.SpawnerLink facing entity @s eyes run function plunge:spawner/particle_line

# Check for dead Swarmlords
scoreboard players set @e[type=marker,tag=plunge,tag=fuse] Plunge.SwarmlordAlive 0
execute as @e[type=marker,tag=plunge,tag=fuse] store success score @s Plunge.SwarmlordAlive run execute on vehicle run scoreboard players set @s Plunge.SwarmlordAlive 1

# Start the fuse on dead Swarmlords
execute as @e[type=marker,tag=plunge,tag=fuse,scores={Plunge.SwarmlordAlive=0}] at @e[type=marker,tag=plunge,tag=chaos_spawner] if score @s Plunge.SpawnerLink = @e[type=marker,tag=plunge,tag=chaos_spawner,sort=nearest,limit=1] Plunge.SpawnerLink facing entity @s eyes run function plunge:spawner/fuse

# When spawner existn't, buff nearby players and kill self
execute as @e[type=marker,tag=plunge,tag=chaos_spawner] at @s unless block ~ ~ ~ spawner run function plunge:spawner/remove