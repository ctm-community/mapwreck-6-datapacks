

scoreboard players set @s[tag=m97_part1] m97_segment 1
scoreboard players set @s[tag=m97_part2] m97_segment 2
scoreboard players set @s[tag=m97_part3] m97_segment 3
scoreboard players set @s[tag=m97_part4] m97_segment 4
scoreboard players set @s[tag=m97_part5] m97_segment 5
scoreboard players set @s[tag=m97_part6] m97_segment 6

scoreboard players operation @s m97_chain_id = m97_dummyPlayer m97_chain_id_number
scoreboard players set @s m97_sound_timer 1


execute store result score @s m97_expected_health run data get entity @s Health

effect give @s invisibility infinite 0 true
effect give @s[tag=m97_part1] regeneration infinite 1 true

team join serpents


tag @s remove m97_init