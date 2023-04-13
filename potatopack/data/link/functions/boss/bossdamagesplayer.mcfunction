#The damage the boss deals the player, dealt to executer
execute if score carrot boss16 matches 1.. run damage @s 35 link:worm
execute unless score carrot boss16 matches 1.. run damage @s 45 link:worm

execute if score temp temp matches 777 at @s run playsound minecraft:entity.player.hurt_sweet_berry_bush hostile @s[nbt={HurtTime:10s}] ~ ~ ~ 0.4 0.5
execute if score temp temp matches 777 at @s run playsound minecraft:entity.player.burp hostile @s[nbt={HurtTime:10s}] ~ ~ ~ 0.4 0.5