#These effects will activate when the player respawns.

tag @s add no_cdl_msg

#added by link
stopsound @s ambient minecraft:ambient.warped_forest.loop

#Soulbound Return
function cartographer_custom_enchantments:enchant_effects/soulbound_return

scoreboard players set @s ca.death_time 21