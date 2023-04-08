
execute if data entity @s interaction if entity @s[tag=inasa.objective_interaction] run function inasa:func/interact/check_hand
execute if data entity @s interaction if entity @s[tag=inasa.dev_tp.interaction] run function inasa:func/items/dev_port/check_tp
execute if data entity @s interaction if entity @s[tag=inasa.teleporter.main.candle.unlit] run function inasa:func/teleporter/main/location_undiscovered
execute if data entity @s interaction if entity @s[tag=inasa.teleporter.main.candle.lit] run function inasa:func/teleporter/main/select/main
execute if data entity @s interaction if entity @s[tag=inasa.teleporter.aux.interaction] run function inasa:func/teleporter/reco_aux/check_gamemode
execute if data entity @s interaction if entity @s[tag=inasa.teleporter.main.interaction] run function inasa:func/teleporter/main/player_click

data remove entity @s interaction
