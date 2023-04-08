
scoreboard players set $selected_area inasa.master 0

execute as @e[tag=inasa.teleporter.main.interaction,type=interaction] at @s run function inasa:func/teleporter/main/select/swap

scoreboard players set $tp_unlocked.white inasa.master 0
scoreboard players set $tp_unlocked.orange inasa.master 0
scoreboard players set $tp_unlocked.magenta inasa.master 0
scoreboard players set $tp_unlocked.light_blue inasa.master 0
scoreboard players set $tp_unlocked.yellow inasa.master 0
scoreboard players set $tp_unlocked.lime inasa.master 0
scoreboard players set $tp_unlocked.pink inasa.master 0
scoreboard players set $tp_unlocked.gray inasa.master 0
scoreboard players set $tp_unlocked.light_gray inasa.master 0
scoreboard players set $tp_unlocked.cyan inasa.master 0
scoreboard players set $tp_unlocked.purple inasa.master 0
scoreboard players set $tp_unlocked.blue inasa.master 0
scoreboard players set $tp_unlocked.brown inasa.master 0
scoreboard players set $tp_unlocked.green inasa.master 0
scoreboard players set $tp_unlocked.red inasa.master 0
scoreboard players set $tp_unlocked.black inasa.master 0

execute as @e[tag=inasa.teleporter.main.candle.white] run data merge entity @s {block_state:{Name:"minecraft:white_candle",Properties:{candles:"2",lit:"true",waterlogged:"false"}}}
execute as @e[tag=inasa.teleporter.main.candle.orange] run data merge entity @s {block_state:{Name:"minecraft:orange_candle",Properties:{candles:"3",lit:"true",waterlogged:"false"}}}
execute as @e[tag=inasa.teleporter.main.candle.magenta] run data merge entity @s {block_state:{Name:"minecraft:magenta_candle",Properties:{candles:"2",lit:"true",waterlogged:"false"}}}
execute as @e[tag=inasa.teleporter.main.candle.light_blue] run data merge entity @s {block_state:{Name:"minecraft:light_blue_candle",Properties:{candles:"2",lit:"true",waterlogged:"false"}}}
execute as @e[tag=inasa.teleporter.main.candle.yellow] run data merge entity @s {block_state:{Name:"minecraft:yellow_candle",Properties:{candles:"4",lit:"true",waterlogged:"false"}}}
execute as @e[tag=inasa.teleporter.main.candle.lime] run data merge entity @s {block_state:{Name:"minecraft:lime_candle",Properties:{candles:"1",lit:"true",waterlogged:"false"}}}
execute as @e[tag=inasa.teleporter.main.candle.pink] run data merge entity @s {block_state:{Name:"minecraft:pink_candle",Properties:{candles:"3",lit:"true",waterlogged:"false"}}}
execute as @e[tag=inasa.teleporter.main.candle.gray] run data merge entity @s {block_state:{Name:"minecraft:gray_candle",Properties:{candles:"4",lit:"true",waterlogged:"false"}}}
execute as @e[tag=inasa.teleporter.main.candle.light_gray] run data merge entity @s {block_state:{Name:"minecraft:light_gray_candle",Properties:{candles:"2",lit:"true",waterlogged:"false"}}}
execute as @e[tag=inasa.teleporter.main.candle.cyan] run data merge entity @s {block_state:{Name:"minecraft:cyan_candle",Properties:{candles:"3",lit:"true",waterlogged:"false"}}}
execute as @e[tag=inasa.teleporter.main.candle.purple] run data merge entity @s {block_state:{Name:"minecraft:purple_candle",Properties:{candles:"2",lit:"true",waterlogged:"false"}}}
execute as @e[tag=inasa.teleporter.main.candle.blue] run data merge entity @s {block_state:{Name:"minecraft:blue_candle",Properties:{candles:"4",lit:"true",waterlogged:"false"}}}
execute as @e[tag=inasa.teleporter.main.candle.brown] run data merge entity @s {block_state:{Name:"minecraft:brown_candle",Properties:{candles:"1",lit:"true",waterlogged:"false"}}}
execute as @e[tag=inasa.teleporter.main.candle.green] run data merge entity @s {block_state:{Name:"minecraft:green_candle",Properties:{candles:"1",lit:"true",waterlogged:"false"}}}
execute as @e[tag=inasa.teleporter.main.candle.red] run data merge entity @s {block_state:{Name:"minecraft:red_candle",Properties:{candles:"2",lit:"true",waterlogged:"false"}}}
execute as @e[tag=inasa.teleporter.main.candle.black] run data merge entity @s {block_state:{Name:"minecraft:black_candle",Properties:{candles:"2",lit:"true",waterlogged:"false"}}}

tag @e[tag=inasa.teleporter.main.candle.lit] add inasa.teleporter.main.candle.unlit
tag @e[tag=inasa.teleporter.main.candle.lit] remove inasa.teleporter.main.candle.lit
