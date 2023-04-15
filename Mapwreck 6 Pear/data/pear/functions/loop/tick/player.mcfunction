function pear:item_effects/tonic/tick

execute if score @s pear.berry_stacks matches 1.. run function pear:item_effects/berry/add_stacks

execute if score @s pear.item_phd matches 1.. run function pear:item_effects/phd/tick

execute if score @s pear.item_sliquifier matches 1.. if score @s pear.shoot matches 1.. run function pear:item_effects/sliquifier/shoot

execute if score @s pear.item_bloodwolf matches 1.. unless score @s pear.bone_cooldown matches 1.. run function pear:item_effects/bone/tick
execute if score @s pear.bone_cooldown matches 1.. unless score @s pear.bone_time matches 1.. as @e[type=wolf,tag=pear.bloodwolf] at @s run function pear:item_effects/bone/despawn_attempt

scoreboard players set @s pear.shoot 0

execute if score @s pear.damage matches 1.. run scoreboard players remove @s pear.damage 1
execute if score @s pear.damage matches 1101.. run scoreboard players set @s pear.damage 1100

execute if score @s pear.bone_time matches 1.. run scoreboard players remove @s pear.bone_time 1
execute if score @s pear.bone_cooldown matches 1.. run scoreboard players remove @s pear.bone_cooldown 1

execute if entity @s[tag=ca.sprintburst] run function pear:item_effects/sprinter/burst

execute if score @s pear.sprinting matches 1.. unless block ~ ~-0.15 ~ #cartographer_core:can_raycast run scoreboard players remove @s pear.sprinting 1
execute if score @s pear.sprinting matches 1.. if block ~ ~-0.15 ~ #cartographer_core:can_raycast unless predicate bb:cant_crit run scoreboard players remove @s pear.sprinting 1
execute if score @s pear.sprinting matches 3.. run scoreboard players set @s pear.sprinting 2

execute if score @s pear.item_inf_pot matches 1.. if score @s pear.use_pot matches 1.. run function pear:item_effects/infinite_pot/get_pot

execute if score @s pear.use_pot matches 1.. run scoreboard players set @s pear.use_pot 0

execute if score @s pear.pot_time matches 1 run function pear:item_find/infinite_potion

execute if score @s pear.pot_time matches 1.. run scoreboard players remove @s pear.pot_time 1

execute if score @s pear.april_time matches 1.. run function pear:item_effects/april/tick

execute if block ~ ~1.6 ~ minecraft:pointed_dripstone[vertical_direction=down,thickness=tip] if block ~ ~-0.2 ~ #cartographer_core:can_raycast run damage @s 7.0 minecraft:falling_stalactite

execute if entity @s[tag=pear.phd_active] unless block ~ ~-0.5 ~ #cartographer_core:can_raycast run function pear:item_effects/phd/explosion