scoreboard players operation @s ca.flame = @p ca.flame
scoreboard players operation @s ca.cauterize = @p ca.cauterize
scoreboard players operation @s ca.bleed = @p ca.bleed
scoreboard players operation @s ca.electrode = @p ca.electrode
scoreboard players operation @s ca.frost = @p ca.frost
scoreboard players operation @s ca.expose = @p ca.expose
scoreboard players operation @s ca.possess = @p ca.possess
scoreboard players operation @s ca.infect = @p ca.infect

scoreboard players operation @s ca.point_blank = @p ca.point_blank
scoreboard players operation @s ca.sharpshot = @p ca.sharpshot

# Check this one vvv
execute if score @p ca.flash matches 1.. run scoreboard players operation @s ca.flash = $constant ca.flash
scoreboard players operation @s ca.explosive = @p ca.explosive
execute if entity @p[predicate=cartographer_custom_enchantments:hold_crossbow] run scoreboard players operation @s ca.punch = @p ca.punch
scoreboard players operation @s ca.tempo_theft = @p ca.tempo_theft

execute if score @s ca.explosive matches 1.. store result score @s ca.vol_dmg run data get entity @s damage 10
execute if score @s ca.explosive matches 1.. run data merge entity @s {damage:-1.0d}
execute if score @s ca.explosive matches 1.. if score @s ca.flame matches 1.. run tag @s add vol_flame

#execute if score @s ca.explosive matches 1.. if score @s ca.point_blank matches 1 run scoreboard players add @s ca.vol_dmg 14
#execute if score @s ca.explosive matches 1.. if score @s ca.point_blank matches 2 run scoreboard players add @s ca.vol_dmg 28
#execute if score @s ca.explosive matches 1.. if score @s ca.point_blank matches 3 run scoreboard players add @s ca.vol_dmg 42

execute if data entity @p {SelectedItem:{id:"minecraft:crossbow",tag:{Enchantments:[{id:"minecraft:punch"}]}}} run tag @s add p_cross
execute if data entity @p {Inventory:[{id:"minecraft:crossbow",Slot:-106b,tag:{Enchantments:[{id:"minecraft:punch"}]}}]} run tag @s add p_cross

tag @s add custom_arrow