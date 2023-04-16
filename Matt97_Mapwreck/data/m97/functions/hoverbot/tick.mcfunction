


execute at @s[type=bee] anchored eyes run particle minecraft:large_smoke ~ ~0.5 ~ 0 -1 0 0.2 0 force
execute at @s[type=bee] run particle minecraft:flame ~-0.05 ~0.5 ~-0.05 0 -1 0 0.2 0 force
execute at @s[type=bee] run particle minecraft:flame ~-0.05 ~0.5 ~0.05 0 -1 0 0.2 0 force
execute at @s[type=bee] run particle minecraft:flame ~0.05 ~0.5 ~-0.05 0 -1 0 0.2 0 force
execute at @s[type=bee] run particle minecraft:flame ~0.05 ~0.5 ~0.05 0 -1 0 0.2 0 force



execute at @s[type=bee,scores={m97_sound_timer=..0}] run scoreboard players set @s m97_sound_timer 5
execute at @s[type=bee,scores={m97_sound_timer=1}] run playsound minecraft:entity.cat.hiss hostile @a ~ ~ ~ .15 0.5
execute at @s[type=bee] run scoreboard players remove @s m97_sound_timer 1





scoreboard players set m97_dummyPlayer m97_chain_count 0
scoreboard players operation m97_dummyPlayer m97_death_id = @s m97_chain_id
execute as @e if score @s m97_chain_id = m97_dummyPlayer m97_death_id run scoreboard players add m97_dummyPlayer m97_chain_count 1
scoreboard players operation @s m97_chain_count = m97_dummyPlayer m97_chain_count

execute at @s[scores={m97_chain_count=1}] run playsound minecraft:entity.iron_golem.death hostile @a ~ ~ ~ 1 1
kill @s[scores={m97_chain_count=1}]







scoreboard players operation m97_dummyPlayer m97_current_id = @s m97_chain_id

execute store result score m97_dummyPlayer m97_expected_health run data get entity @s Health

execute if score @s m97_expected_health > m97_dummyPlayer m97_expected_health run playsound minecraft:entity.iron_golem.hurt hostile @a ~ ~ ~ 1 1
execute if score @s m97_expected_health > m97_dummyPlayer m97_expected_health run execute as @e if score @s m97_chain_id = m97_dummyPlayer m97_current_id run function m97:equalize_health

execute if score @s m97_expected_health < m97_dummyPlayer m97_expected_health run execute as @e if score @s m97_chain_id = m97_dummyPlayer m97_current_id run function m97:equalize_health

execute at @s[scores={m97_expected_health=..0}] run playsound minecraft:entity.iron_golem.death hostile @a ~ ~ ~ 1 1








#PREVENTS HOVERBOT FROM HITTING HEAD AGAINST CEILING. DELETE TO REDUCE LAG.

#execute as @s[type=bee] unless block ~ ~2 ~ #m97:no_hitbox run data merge entity @s {Motion:[0.0,-0.03,0.0]}
#execute as @s[type=bee] unless block ~ ~1.1 ~ #m97:no_hitbox run data merge entity @s {Motion:[0.0,-0.03,0.0]}

#execute as @s[type=bee] unless block ^ ^2 ^0.9 #m97:no_hitbox run data merge entity @s {Motion:[0.0,-0.03,0.0]}
#execute as @s[type=bee] unless block ^ ^1.1 ^0.9 #m97:no_hitbox run data merge entity @s {Motion:[0.0,-0.03,0.0]}



execute as @s[type=bee] unless block ~-0.1 ~2 ~-0.1 #m97:no_hitbox run data merge entity @s {Motion:[0.0,-0.05,0.0]}
execute as @s[type=bee] unless block ~-0.1 ~1.1 ~-0.1 #m97:no_hitbox run data merge entity @s {Motion:[0.0,-0.05,0.0]}

execute as @s[type=bee] unless block ~0.1 ~2 ~-0.1 #m97:no_hitbox run data merge entity @s {Motion:[0.0,-0.05,0.0]}
execute as @s[type=bee] unless block ~0.1 ~1.1 ~-0.1 #m97:no_hitbox run data merge entity @s {Motion:[0.0,-0.05,0.0]}

execute as @s[type=bee] unless block ~-0.1 ~2 ~0.1 #m97:no_hitbox run data merge entity @s {Motion:[0.0,-0.05,0.0]}
execute as @s[type=bee] unless block ~-0.1 ~1.1 ~0.1 #m97:no_hitbox run data merge entity @s {Motion:[0.0,-0.05,0.0]}

execute as @s[type=bee] unless block ~0.1 ~2 ~0.1 #m97:no_hitbox run data merge entity @s {Motion:[0.0,-0.05,0.0]}
execute as @s[type=bee] unless block ~0.1 ~1.1 ~0.1 #m97:no_hitbox run data merge entity @s {Motion:[0.0,-0.05,0.0]}













