#Reset ability charge
scoreboard players set @s ability_charge 0

#Set Recast Count to 0
scoreboard players set @s ca.accelerate_stacks 0

#Reset potentially changed stats.
data merge entity @s {NoAI:0}

effect clear @s glowing

#Place the ability on brief cooldown
scoreboard players set @s cooldown 4

#Token Management. Remove the Token, set all nearby players token refresh on cooldown.
function cartographer_mob_abilities:helper/token/return
tag @s remove tokened
tag @s remove attacking

tag @s remove ca.has_kited
tag @s remove ca.has_gap_closed
tag @s remove ca.has_strafed
tag @s remove ca.has_retreated

tag @s remove warned