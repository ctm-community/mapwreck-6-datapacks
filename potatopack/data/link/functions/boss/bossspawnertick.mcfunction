#20hz on boss spawners

#get count
scoreboard players add spawners boss16 1

#particles
execute if entity @s[scores={life=1}] run particle flash ~ ~ ~
execute if entity @s[scores={life=1}] run playsound entity.blaze.shoot hostile @a ~ ~ ~ 0.5 1 0.5

#message
scoreboard players add spawnertime boss16 1

execute if score spawnertime boss16 matches 2400.. run tellraw @a {"text":"Destroy the spawners!","color":"red","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"","color":"red"}]}}
execute if score spawnertime boss16 matches 2400.. run scoreboard players set spawnertime boss16 0


#spawner kill
execute unless block ~ ~ ~ spawner run playsound minecraft:entity.allay.death hostile @a ~ ~ ~ 1 1
execute unless block ~ ~ ~ spawner run particle soul_fire_flame ~ ~ ~ 0.5 0.5 0.5 0 12
execute unless block ~ ~ ~ spawner run kill @s

#pickaxe
execute at @s as @a[distance=..5] at @s run function link:boss/bossspawnerpick