#killing boss when player wins
scoreboard players remove @e[type=item_display,tag=a16bosspiece] pieceid 1
execute as @e[type=item_display,tag=a16bosspiece,scores={pieceid=..0}] at @s run function delta:api/explosion_sound
execute as @e[type=item_display,tag=a16bosspiece,scores={pieceid=..0}] at @s run function delta:api/explosion_emitter_particle
execute as @e[type=item_display,tag=a16bosspiece,scores={pieceid=..0}] at @s run kill @s

execute unless entity @e[type=item_display,tag=a16bosspiece,limit=1] run function link:boss/bosswin

stopsound @a ambient minecraft:ambient.warped_forest.loop