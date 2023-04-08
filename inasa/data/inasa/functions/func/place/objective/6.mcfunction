
function inasa:func/place/objective/generic

execute if entity eab23be1-de12-4038-aa7e-640556307f17 run function inasa:func/remove/objective/6
execute align xyz run summon minecraft:block_display ~.5 ~ ~.5 {Tags:["inasa.objective.6","inasa.object"],UUID:[I;-357418015,-569229256,-1434557435,1446018839]}
execute as eab23be1-de12-4038-aa7e-640556307f17 at @s run particle item lime_wool ~ ~.5 ~ .12 .2 .12 0.001 20 normal
execute summon interaction run ride @s mount eab23be1-de12-4038-aa7e-640556307f17
execute as eab23be1-de12-4038-aa7e-640556307f17 on passengers run function inasa:func/place/objective/as_interaction
execute as eab23be1-de12-4038-aa7e-640556307f17 on passengers run tag @s add inasa.objective.6

tellraw @s ["",{"text":"Objective 6","color":"#F5CE54"},{"text":" set at your current location.","color":"#EFDADA"}]

function #minecraft:inasa/place_objective/6
