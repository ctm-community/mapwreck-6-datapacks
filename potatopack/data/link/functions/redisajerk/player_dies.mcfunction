#effects for when the player dies

execute at @s if biome ~ ~ ~ minecraft:eroded_badlands run stopsound @s ambient minecraft:entity.wandering_trader.death
scoreboard players set @s redisajerk 0