
execute if data entity @s attack if entity @s[tag=inasa.dev_tp.interaction] run function inasa:func/items/dev_port/remove_tp
execute if data entity @s attack if entity @s[tag=inasa.placeholder.interaction] run function inasa:func/placeholder/remove_placeholder
execute if data entity @s attack if entity @s[tag=inasa.teleporter.aux.interaction] if entity @p[advancements={inasa:interact/left=true},gamemode=creative] run function inasa:func/teleporter/reco_aux/remove_teleporter

data remove entity @s attack
