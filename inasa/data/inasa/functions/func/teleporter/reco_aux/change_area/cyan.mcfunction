
function inasa:func/teleporter/reco_aux/change_area/unassign

#RNG
#\Set Values
#\\Min
scoreboard players set $rng_min bbl.rng 1
#\\Max
scoreboard players set $rng_max bbl.rng 4
#\Roll
function bb:lib/rng

execute if score $value bbl.rng matches 1 run summon block_display ~ ~ ~ {Tags:["inasa.new","inasa.object","inasa.teleporter.aux.display.candle"],brightness:{sky:14,block:14},block_state:{Name:"minecraft:cyan_candle",Properties:{candles:"1",lit:"true"}},transformation:[1.000f, 0.000f, 0.000f,-0.500f,0.000f, 1.000f, 0.000f,0.700f,0.000f, 0.000f, 1.000f,-0.500f,0.000f, 0.000f, 0.000f,1.000f]}
execute if score $value bbl.rng matches 2 run summon block_display ~ ~ ~ {Tags:["inasa.new","inasa.object","inasa.teleporter.aux.display.candle"],brightness:{sky:14,block:14},block_state:{Name:"minecraft:cyan_candle",Properties:{candles:"2",lit:"true"}},transformation:[1.000f, 0.000f, 0.000f,-0.500f,0.000f, 1.000f, 0.000f,0.700f,0.000f, 0.000f, 1.000f,-0.500f,0.000f, 0.000f, 0.000f,1.000f]}
execute if score $value bbl.rng matches 3 run summon block_display ~ ~ ~ {Tags:["inasa.new","inasa.object","inasa.teleporter.aux.display.candle"],brightness:{sky:14,block:14},block_state:{Name:"minecraft:cyan_candle",Properties:{candles:"3",lit:"true"}},transformation:[1.000f, 0.000f, 0.000f,-0.500f,0.000f, 1.000f, 0.000f,0.700f,0.000f, 0.000f, 1.000f,-0.500f,0.000f, 0.000f, 0.000f,1.000f]}
execute if score $value bbl.rng matches 4 run summon block_display ~ ~ ~ {Tags:["inasa.new","inasa.object","inasa.teleporter.aux.display.candle"],brightness:{sky:14,block:14},block_state:{Name:"minecraft:cyan_candle",Properties:{candles:"4",lit:"true"}},transformation:[1.000f, 0.000f, 0.000f,-0.500f,0.000f, 1.000f, 0.000f,0.700f,0.000f, 0.000f, 1.000f,-0.500f,0.000f, 0.000f, 0.000f,1.000f]}

function inasa:func/teleporter/reco_aux/change_area/place_bedrock
execute at 16303f86-34ed-4239-9c3c-b499b55f0cc8 run data modify storage inasa:storage sudo_root.locations.player_tp.cyan set from entity 16303f86-34ed-4239-9c3c-b499b55f0cc8 Pos
kill 16303f86-34ed-4239-9c3c-b499b55f0cc8

tag @s add inasa.teleporter.aux.area.cyan
