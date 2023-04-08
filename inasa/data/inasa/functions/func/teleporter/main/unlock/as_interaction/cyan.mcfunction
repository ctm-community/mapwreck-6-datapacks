
tag @s remove inasa.teleporter.main.candle.unlit
tag @s add inasa.teleporter.main.candle.lit

particle minecraft:campfire_signal_smoke ~ ~2 ~ 0.01 1 0.01 0.001 10

execute on passengers run data merge entity @s {block_state:{Name:"minecraft:cyan_candle",Properties:{candles:"3",lit:"true",waterlogged:"false"}}}
