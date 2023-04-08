
execute if entity @p[advancements={inasa:interact/right=true},gamemode=creative] run function inasa:func/teleporter/reco_aux/change_area/main
execute if entity @p[advancements={inasa:interact/right=true},gamemode=!creative] run function inasa:func/teleporter/reco_aux/player_click
