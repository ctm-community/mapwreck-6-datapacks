
function inasa:func/interact/place_objective/error_effects

scoreboard players set @p[advancements={inasa:interact/right=true}] bbl.actionbar_spam_mute 60
title @p[advancements={inasa:interact/right=true}] actionbar {"text":"ERROR: This teleport has not been assigned to an area by the mapmaker.","color":"white"}
