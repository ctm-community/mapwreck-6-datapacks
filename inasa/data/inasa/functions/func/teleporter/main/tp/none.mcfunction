
execute positioned ~ ~.9 ~ run function inasa:func/interact/place_objective/error_effects

scoreboard players set @p[advancements={inasa:interact/right=true}] bbl.actionbar_spam_mute 60
title @p[advancements={inasa:interact/right=true}] actionbar {"text":"No teleport selected! Click a lit candle to prime the teleport.","color":"white"}
