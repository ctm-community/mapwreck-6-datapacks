scoreboard players operation $poss ca.possession = @s ca.possession

scoreboard players set in math 1
scoreboard players set in1 math 100

function cartographer_core:helper/math/rng/range

scoreboard players operation $ranged ca.melee_chance = out math
scoreboard players operation $ranged ca.possess = @s ca.possession
scoreboard players set $percent_poss ca.melee_chance 25

function cartographer_custom_enchantments:enchant_effects/possess/branch

tag @s[type=#bb:hostile,tag=is_possess] remove is_possess

function #minecraft:cartographer/events/enchants_mob_hit/ranged/possess