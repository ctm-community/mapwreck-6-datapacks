scoreboard players set $dmg pear.item_hex_eater 0

execute if predicate pear:has_bad_omen run scoreboard players add $dmg pear.item_hex_eater 1
execute if predicate pear:has_blindness run scoreboard players add $dmg pear.item_hex_eater 1
execute if predicate pear:has_darkness run scoreboard players add $dmg pear.item_hex_eater 1
execute if predicate pear:has_levitation run scoreboard players add $dmg pear.item_hex_eater 1
execute if predicate pear:has_mining_fatigue run scoreboard players add $dmg pear.item_hex_eater 1
execute if predicate pear:has_poison run scoreboard players add $dmg pear.item_hex_eater 1
execute if predicate pear:has_slowness run scoreboard players add $dmg pear.item_hex_eater 1
execute if predicate pear:has_weakness run scoreboard players add $dmg pear.item_hex_eater 1
execute if predicate pear:has_wither run scoreboard players add $dmg pear.item_hex_eater 1
execute if predicate pear:has_nausea run scoreboard players add $dmg pear.item_hex_eater 1
execute if predicate pear:is_on_fire run scoreboard players add $dmg pear.item_hex_eater 1

execute if score @s ca.frost_time matches 1.. run scoreboard players add $dmg pear.item_hex_eater 1

execute if score @s ca.effect_stun_duration matches 1.. run scoreboard players add $dmg pear.item_hex_eater 1
execute if score @s ca.effect_bleed matches 1.. run scoreboard players add $dmg pear.item_hex_eater 1
execute if score @s ca.effect_shock matches 1.. run scoreboard players add $dmg pear.item_hex_eater 1
execute if score @s ca.effect_infect matches 1.. run scoreboard players add $dmg pear.item_hex_eater 1

execute if score @s pear.effect_slip matches 1.. run scoreboard players add $dmg pear.item_hex_eater 1

execute if score $dmg pear.item_hex_eater matches 1 run damage @s 2 cartographer_custom_statuses:expose_damage by @p
execute if score $dmg pear.item_hex_eater matches 2 run damage @s 4 cartographer_custom_statuses:expose_damage by @p
execute if score $dmg pear.item_hex_eater matches 3 run damage @s 6 cartographer_custom_statuses:expose_damage by @p
execute if score $dmg pear.item_hex_eater matches 4 run damage @s 8 cartographer_custom_statuses:expose_damage by @p
execute if score $dmg pear.item_hex_eater matches 5 run damage @s 10 cartographer_custom_statuses:expose_damage by @p

execute if score $dmg pear.item_hex_eater matches 6 run damage @s 12 cartographer_custom_statuses:expose_damage by @p
execute if score $dmg pear.item_hex_eater matches 7 run damage @s 14 cartographer_custom_statuses:expose_damage by @p
execute if score $dmg pear.item_hex_eater matches 8 run damage @s 16 cartographer_custom_statuses:expose_damage by @p
execute if score $dmg pear.item_hex_eater matches 9 run damage @s 18 cartographer_custom_statuses:expose_damage by @p
execute if score $dmg pear.item_hex_eater matches 10 run damage @s 20 cartographer_custom_statuses:expose_damage by @p

execute if score $dmg pear.item_hex_eater matches 11 run damage @s 22 cartographer_custom_statuses:expose_damage by @p
execute if score $dmg pear.item_hex_eater matches 12 run damage @s 24 cartographer_custom_statuses:expose_damage by @p
execute if score $dmg pear.item_hex_eater matches 13 run damage @s 26 cartographer_custom_statuses:expose_damage by @p
execute if score $dmg pear.item_hex_eater matches 14 run damage @s 28 cartographer_custom_statuses:expose_damage by @p
execute if score $dmg pear.item_hex_eater matches 15 run damage @s 30 cartographer_custom_statuses:expose_damage by @p
execute if score $dmg pear.item_hex_eater matches 16 run damage @s 32 cartographer_custom_statuses:expose_damage by @p
execute if score $dmg pear.item_hex_eater matches 17 run damage @s 34 cartographer_custom_statuses:expose_damage by @p

effect clear @s bad_omen
effect clear @s blindness
effect clear @s darkness
effect clear @s levitation
effect clear @s mining_fatigue
effect clear @s poison
effect clear @s slowness
effect clear @s weakness
effect clear @s wither
effect clear @s nausea

execute if predicate pear:is_on_fire run summon potion ~ ~0.25 ~ {Item:{id:"minecraft:splash_potion",Count:1b,tag:{Potion:"minecraft:water"}}}

execute if score @s ca.frost_time matches 1.. run scoreboard players set @s ca.frost_time 2

execute if score @s ca.effect_stun_duration matches 1.. run scoreboard players set @s ca.effect_stun_duration 2
execute if score @s ca.effect_bleed matches 1.. run scoreboard players add @s ca.bleed_potency 0
execute if score @s ca.effect_bleed matches 1.. run scoreboard players add @s ca.effect_bleed 0
execute if score @s ca.effect_shock matches 1.. run scoreboard players add @s ca.effect_shock 0
execute if score @s ca.effect_infect matches 1.. run scoreboard players add @s ca.effect_infect 0

execute if score @s pear.effect_slip matches 1.. run scoreboard players add @s pear.effect_slip 0

execute if score $dmg pear.item_hex_eater matches 1.. run playsound minecraft:entity.warden.death player @a ~ ~ ~ 0.5 2
execute if score $dmg pear.item_hex_eater matches 1.. run particle minecraft:wax_on ~ ~1.2 ~ 0.3 0.5 0.3 4 7 normal
execute if score $dmg pear.item_hex_eater matches 1.. run particle minecraft:wax_off ~ ~1.2 ~ 0.3 0.5 0.3 4 7 normal