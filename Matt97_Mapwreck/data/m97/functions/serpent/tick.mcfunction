

execute at @s[tag=m97_part1,scores={m97_sound_timer=..0}] run scoreboard players set @s m97_sound_timer 6
execute at @s[tag=m97_part1,scores={m97_sound_timer=1}] run playsound minecraft:entity.phantom.ambient hostile @a ~ ~ ~ 0.5 0.5
execute at @s[tag=m97_part1] run scoreboard players remove @s m97_sound_timer 1



#execute on passengers run teleport @s ~ ~ ~ ~ ~



scoreboard players set m97_dummyPlayer m97_chain_count 0

scoreboard players operation m97_dummyPlayer m97_death_id = @s m97_chain_id

execute as @e if score @s m97_chain_id = m97_dummyPlayer m97_death_id run scoreboard players add m97_dummyPlayer m97_chain_count 1

scoreboard players operation @s m97_chain_count = m97_dummyPlayer m97_chain_count

execute at @s[scores={m97_chain_count=6}] run playsound minecraft:entity.phantom.death hostile @a ~ ~ ~ 1 0.7
kill @s[scores={m97_chain_count=..6}]





scoreboard players operation m97_dummyPlayer m97_current_id = @s m97_chain_id

execute store result score m97_dummyPlayer m97_expected_health run data get entity @s Health



execute if score @s m97_expected_health > m97_dummyPlayer m97_expected_health run playsound minecraft:entity.phantom.hurt hostile @a ~ ~ ~ 1 0.5



execute if score @s m97_expected_health > m97_dummyPlayer m97_expected_health run execute as @e if score @s m97_chain_id = m97_dummyPlayer m97_current_id run function m97:equalize_health

execute if score @s m97_expected_health < m97_dummyPlayer m97_expected_health run execute as @e if score @s m97_chain_id = m97_dummyPlayer m97_current_id run function m97:equalize_health



execute at @s[scores={m97_expected_health=..0}] run playsound minecraft:entity.phantom.death hostile @a ~ ~ ~ 1 0.7



execute if entity @s run function m97:move_parts


data merge entity @s[type=bee] {HasStung:0b,TicksSincePollination:20000000,CannotEnterHiveTicks:1000000,AngerTime:20000000}


