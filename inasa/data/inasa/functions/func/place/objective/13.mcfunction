
function inasa:func/place/objective/generic

execute if entity 47991332-879d-4848-ae0e-a610e6857f10 run function inasa:func/remove/objective/13
execute align xyz run summon minecraft:block_display ~.5 ~ ~.5 {Tags:["inasa.objective.13","inasa.object"],UUID:[I;1201214258,-2019735480,-1374771696,-427458800]}
execute as 47991332-879d-4848-ae0e-a610e6857f10 at @s run particle item brown_wool ~ ~.5 ~ .12 .2 .12 0.001 20 normal
execute summon interaction run ride @s mount 47991332-879d-4848-ae0e-a610e6857f10
execute as 47991332-879d-4848-ae0e-a610e6857f10 on passengers run function inasa:func/place/objective/as_interaction
execute as 47991332-879d-4848-ae0e-a610e6857f10 on passengers run tag @s add inasa.objective.13

tellraw @s ["",{"text":"Objective 13","color":"#F5CE54"},{"text":" set at your current location.","color":"#EFDADA"}]

function #minecraft:inasa/place_objective/13
