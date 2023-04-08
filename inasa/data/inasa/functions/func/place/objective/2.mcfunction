
function inasa:func/place/objective/generic

execute if entity bca706a8-3d1c-4d72-91f2-89baacc0ac11 run function inasa:func/remove/objective/2
execute align xyz run summon minecraft:block_display ~.5 ~ ~.5 {Tags:["inasa.objective.2","inasa.object"],UUID:[I;-1129904472,1025265010,-1846376006,-1396659183]}
execute as bca706a8-3d1c-4d72-91f2-89baacc0ac11 at @s run particle item orange_wool ~ ~.5 ~ .12 .2 .12 0.001 20 normal
execute summon interaction run ride @s mount bca706a8-3d1c-4d72-91f2-89baacc0ac11
execute as bca706a8-3d1c-4d72-91f2-89baacc0ac11 on passengers run function inasa:func/place/objective/as_interaction
execute as bca706a8-3d1c-4d72-91f2-89baacc0ac11 on passengers run tag @s add inasa.objective.2

tellraw @s ["",{"text":"Objective 2","color":"#F5CE54"},{"text":" set at your current location.","color":"#EFDADA"}]

function #minecraft:inasa/place_objective/2
