execute on passengers run teleport @s ~ ~ ~ ~ 0



data merge entity @s[type=bee] {HasStung:0b,TicksSincePollination:20000000,CannotEnterHiveTicks:1000000,AngerTime:20000000}




particle minecraft:flame ~ ~0.3 ~ 0.3 0.3 0.3 0.02 1 force




scoreboard players add @s[type=bee] m97_despawn_timer 1
kill @s[scores={m97_despawn_timer=3000..}]