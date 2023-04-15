execute if entity @s[tag=ca.crashing] run function pear:item_effects/crasher/crashing

execute unless score @s pear.effect_slip matches 1.. if predicate pear:has_sliq_nausea run function pear:item_effects/sliquifier/apply_slip

execute if entity @s[type=potion,tag=pear.sliq_potion] run function cartographer_mob_abilities:passive/projectile/fix_projectile

execute if score @s pear.effect_slip matches 1.. run function pear:item_effects/sliquifier/slip_tick