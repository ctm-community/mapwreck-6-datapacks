#What happens when the rock impacts an entity

#effects
playsound minecraft:block.composter.fill_success player @a ~ ~ ~ 1 0.5
execute unless entity @s[tag=potatoproj] run playsound minecraft:entity.player.attack.knockback player @a ~ ~ ~ 1 1.2
particle block dirt ~ ~ ~ 0.9 0.9 0.9 0 13 normal
particle block stone ~ ~ ~ 0.9 0.9 0.9 0 13 normal
execute unless entity @s[tag=potatoproj] run particle sweep_attack ~ ~1 ~

#damage
damage @s[tag=!scarecrow] 16 minecraft:arrow by @p

#push
scoreboard players set @s co_send -10
function motion:motion/push


#end it all pls
execute if entity @s[tag=potatoproj] run function link:items/wands/potato/kill
