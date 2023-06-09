#Transfiguration
execute if score $cu_en_melee ca.enabler matches 1.. if entity @s[scores={ca.transfig=1..},advancements={entityid:player_hurt_entity={is_projectile=false}}] run function cartographer_custom_enchantments:enchant_effects/transfiguration

#Exposing
execute if score $cu_en_melee ca.enabler matches 1.. if entity @s[scores={ca.exposing=1..},advancements={entityid:player_hurt_entity={is_projectile=false}}] run function cartographer_custom_enchantments:enchant_effects/exposing

tag @s add attack
#Concealed Consume
execute if score $cu_en_melee ca.enabler matches 1.. if entity @s[scores={ca.concealed=1..,ca.conceal_time=1..}] run function cartographer_custom_enchantments:enchant_effects/concealed/consume
tag @s remove attack

#Fire Aspect - Needs to run before Cauterize
execute if score $cu_en_melee ca.enabler matches 1.. if entity @s[scores={ca.fire_aspect=1..},advancements={entityid:player_hurt_entity={is_projectile=false}}] run function cartographer_custom_enchantments:enchant_effects/fire_aspect

#Cauterize
execute if score $cu_en_passive ca.enabler matches 1.. if entity @s[scores={ca.cauterize=1..},advancements={entityid:player_hurt_entity={is_projectile=false}}] run function cartographer_custom_enchantments:enchant_effects/cauterize/melee

#Infection
execute if score $cu_en_melee ca.enabler matches 1.. if entity @s[scores={ca.infection=1..},advancements={entityid:player_hurt_entity={is_projectile=false}}] run function cartographer_custom_enchantments:enchant_effects/infection
#Duelist
execute if score $cu_en_melee ca.enabler matches 1.. if entity @s[scores={ca.duelist=1..},advancements={entityid:player_hurt_entity={is_projectile=false}}] run function cartographer_custom_enchantments:enchant_effects/duelist
#Echo
execute if score $cu_en_melee ca.enabler matches 1.. if entity @s[tag=!ca.echo_charge_taken,scores={ca.echo=1..},advancements={entityid:player_hurt_entity={is_projectile=false}}] run function cartographer_custom_enchantments:enchant_effects/echo
#Evocation
execute if score $cu_en_melee ca.enabler matches 1.. if entity @s[scores={ca.evocation=1..},advancements={entityid:player_hurt_entity={is_projectile=false}}] run function cartographer_custom_enchantments:enchant_effects/evocation
#Frostbite
execute if score $cu_en_melee ca.enabler matches 1.. if entity @s[scores={ca.frostbite=1..},advancements={entityid:player_hurt_entity={is_projectile=false}}] run function cartographer_custom_enchantments:enchant_effects/frostbite
#Hunter
execute if score $cu_en_melee ca.enabler matches 1.. if entity @s[scores={ca.hunter=1..},advancements={entityid:player_hurt_entity={is_projectile=false}}] run function cartographer_custom_enchantments:enchant_effects/hunter
#Electrocute
execute if score $cu_en_melee ca.enabler matches 1.. if entity @s[scores={ca.electrocute=1..},advancements={entityid:player_hurt_entity={is_projectile=false}}] run function cartographer_custom_enchantments:enchant_effects/electrocute
#Possession
execute if score $cu_en_melee ca.enabler matches 1.. if entity @s[scores={ca.possession=1..},advancements={entityid:player_hurt_entity={is_projectile=false}}] run function cartographer_custom_enchantments:enchant_effects/possession
#Singe
execute if score $cu_en_melee ca.enabler matches 1.. if entity @s[scores={ca.singe=1..},advancements={entityid:player_hurt_entity={is_projectile=false}}] run function cartographer_custom_enchantments:enchant_effects/singe
#Stunning
execute if score $cu_en_melee ca.enabler matches 1.. if entity @s[scores={ca.stunning=1..},advancements={entityid:player_hurt_entity={is_projectile=false}}] run function cartographer_custom_enchantments:enchant_effects/stunning

#Rally
execute if score $rally_restore ca.rally matches 1.. run function cartographer_custom_enchantments:enchant_effects/rally/restore


#Surging Strike - Runs after Stunning to use melee chance calc
execute if score $cu_en_melee ca.enabler matches 1.. if entity @s[scores={ca.surging_strike=1..},advancements={entityid:player_hurt_entity={is_projectile=false}}] unless entity @s[tag=can_crit] run function cartographer_custom_enchantments:enchant_effects/surging_strike

#Bleeding
execute if score $cu_en_melee ca.enabler matches 1.. if entity @s[scores={ca.bleeding=1..},advancements={entityid:player_hurt_entity={is_projectile=false}}] run function cartographer_custom_enchantments:enchant_effects/bleeding

#First Strike
execute if score $cu_en_melee ca.enabler matches 1.. if entity @s[scores={ca.first_strike=1..},tag=can_first_strike,advancements={entityid:player_hurt_entity={is_projectile=false}}] run function cartographer_custom_enchantments:enchant_effects/first_strike

#Tempo Theft Player Effect
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[advancements={entityid:player_hurt_entity={is_projectile=true}},scores={ca.tempo_theft=1}] run function cartographer_custom_enchantments:enchant_effects/tempo_theft/player
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[advancements={entityid:player_hurt_entity={is_projectile=true}},scores={ca.tempo_theft=2}] run function cartographer_custom_enchantments:enchant_effects/tempo_theft/player
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[advancements={entityid:player_hurt_entity={is_projectile=true}},scores={ca.tempo_theft=3}] run function cartographer_custom_enchantments:enchant_effects/tempo_theft/player

#Executioner - Happens last in chain for health reasons
execute if score $cu_en_melee ca.enabler matches 1.. if entity @s[scores={ca.executioner=1..},advancements={entityid:player_hurt_entity={is_projectile=false}}] run function cartographer_custom_enchantments:enchant_effects/executioner

#If a projectile attack, we attempt to give loyalty charges back
#If the player is recharging loyalty, give them 6 ticks of time back (3 seconds)
execute if entity @s[advancements={entityid:player_hurt_entity={is_projectile=true}}] if score @s ca.loyalty_time matches 0.. unless score @s ca.loyalty_refund_cooldown matches 1.. run function cartographer_custom_enchantments:enchant_effects/loyalty/time_refund

#If NOT a projectile attack, cleanse the ranged tags on nearby mobs.
execute if entity @s[advancements={entityid:player_hurt_entity={is_projectile=false}}] as @e[type=#bb:hostile,distance=..6] at @s run function cartographer_custom_enchantments:enchant_effects/purge_ranged_tags

#Check for ranged attack
execute if entity @s[advancements={entityid:player_hurt_entity={is_projectile=true}}] run tag @s add ca.made_ranged_attack