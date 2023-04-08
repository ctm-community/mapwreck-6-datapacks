
function inasa:func/interact/place_objective/error_effects

scoreboard players set @p[advancements={inasa:interact/right=true}] bbl.actionbar_spam_mute 60
title @p[advancements={inasa:interact/right=true}] actionbar {"text":"This is not the location for this objective!","color":"white"}

tag @s remove inasa.invalid_placement
