tag @s remove shocked_tick

execute if score @s[nbt={HurtTime:0s}] ca.effect_bleed matches 1.. unless score @s ca.effect_shock matches 1.. unless score @s ca.effect_infect matches 1.. run function cartographer_custom_statuses:effects/bleeding/effect

execute if score @s[nbt={HurtTime:0s}] ca.effect_shock matches 1.. unless score @s ca.effect_infect matches 1.. run function cartographer_custom_statuses:effects/shocked/effect

execute if score @s[nbt={HurtTime:0s}] ca.effect_infect matches 1.. run function cartographer_custom_statuses:effects/infect/effect

execute if score @s ca.effect_cloak matches 1.. run function cartographer_custom_statuses:effects/cloak/effects