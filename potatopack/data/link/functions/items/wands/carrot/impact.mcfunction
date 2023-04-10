#What happens when the water impacts an entity

#effects
playsound minecraft:entity.camel.eat hostile @a ~ ~ ~ 1 0.5
particle item carrot ~ ~1 ~ 0.5 1 0.5 0.1 20 normal

#push
scoreboard players set @s co_send -3
function motion:motion/push

#damage
damage @s[tag=!scarecrow] 9 minecraft:arrow by @p