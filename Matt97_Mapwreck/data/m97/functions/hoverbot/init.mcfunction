



scoreboard players operation @s m97_chain_id = m97_dummyPlayer m97_chain_id_number
scoreboard players set @s m97_sound_timer 1


execute store result score @s m97_expected_health run data get entity @s Health



tag @s remove m97_init