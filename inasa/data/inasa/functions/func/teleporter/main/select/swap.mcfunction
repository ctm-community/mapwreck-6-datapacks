
particle minecraft:smoke ~ ~1 ~ 0.15 0.1 0.15 0.001 10
particle minecraft:flame ~ ~1.1 ~ 0.1 0.0001 0.1 0.001 3

execute if score $selected_area inasa.master matches 0 on passengers run data merge entity @s {block_state:{Name:"minecraft:candle",Properties:{candles:"1",lit:"false",waterlogged:"false"}}}
execute if score $selected_area inasa.master matches 1 on passengers run data merge entity @s {block_state:{Name:"minecraft:white_candle",Properties:{candles:"2",lit:"false",waterlogged:"false"}}}
execute if score $selected_area inasa.master matches 2 on passengers run data merge entity @s {block_state:{Name:"minecraft:orange_candle",Properties:{candles:"3",lit:"false",waterlogged:"false"}}}
execute if score $selected_area inasa.master matches 3 on passengers run data merge entity @s {block_state:{Name:"minecraft:magenta_candle",Properties:{candles:"2",lit:"false",waterlogged:"false"}}}
execute if score $selected_area inasa.master matches 4 on passengers run data merge entity @s {block_state:{Name:"minecraft:light_blue_candle",Properties:{candles:"2",lit:"false",waterlogged:"false"}}}
execute if score $selected_area inasa.master matches 5 on passengers run data merge entity @s {block_state:{Name:"minecraft:yellow_candle",Properties:{candles:"4",lit:"false",waterlogged:"false"}}}
execute if score $selected_area inasa.master matches 6 on passengers run data merge entity @s {block_state:{Name:"minecraft:lime_candle",Properties:{candles:"1",lit:"false",waterlogged:"false"}}}
execute if score $selected_area inasa.master matches 7 on passengers run data merge entity @s {block_state:{Name:"minecraft:pink_candle",Properties:{candles:"3",lit:"false",waterlogged:"false"}}}
execute if score $selected_area inasa.master matches 8 on passengers run data merge entity @s {block_state:{Name:"minecraft:gray_candle",Properties:{candles:"4",lit:"false",waterlogged:"false"}}}
execute if score $selected_area inasa.master matches 9 on passengers run data merge entity @s {block_state:{Name:"minecraft:light_gray_candle",Properties:{candles:"2",lit:"false",waterlogged:"false"}}}
execute if score $selected_area inasa.master matches 10 on passengers run data merge entity @s {block_state:{Name:"minecraft:cyan_candle",Properties:{candles:"3",lit:"false",waterlogged:"false"}}}
execute if score $selected_area inasa.master matches 11 on passengers run data merge entity @s {block_state:{Name:"minecraft:purple_candle",Properties:{candles:"2",lit:"false",waterlogged:"false"}}}
execute if score $selected_area inasa.master matches 12 on passengers run data merge entity @s {block_state:{Name:"minecraft:blue_candle",Properties:{candles:"4",lit:"false",waterlogged:"false"}}}
execute if score $selected_area inasa.master matches 13 on passengers run data merge entity @s {block_state:{Name:"minecraft:brown_candle",Properties:{candles:"1",lit:"false",waterlogged:"false"}}}
execute if score $selected_area inasa.master matches 14 on passengers run data merge entity @s {block_state:{Name:"minecraft:green_candle",Properties:{candles:"1",lit:"false",waterlogged:"false"}}}
execute if score $selected_area inasa.master matches 15 on passengers run data merge entity @s {block_state:{Name:"minecraft:red_candle",Properties:{candles:"2",lit:"false",waterlogged:"false"}}}
execute if score $selected_area inasa.master matches 16 on passengers run data merge entity @s {block_state:{Name:"minecraft:black_candle",Properties:{candles:"2",lit:"false",waterlogged:"false"}}}

function inasa:func/teleporter/main/select/air
