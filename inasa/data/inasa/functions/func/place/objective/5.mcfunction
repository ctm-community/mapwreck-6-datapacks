
function inasa:func/place/objective/generic

execute if entity 7861852b-2800-4860-91de-400dfd178112 run function inasa:func/remove/objective/5
execute align xyz run summon minecraft:block_display ~.5 ~ ~.5 {Tags:["inasa.objective.5","inasa.object"],UUID:[I;2019657003,671107168,-1847705587,-48791278]}
execute as 7861852b-2800-4860-91de-400dfd178112 at @s run particle item yellow_wool ~ ~.5 ~ .12 .2 .12 0.001 20 normal
execute summon interaction run ride @s mount 7861852b-2800-4860-91de-400dfd178112
execute as 7861852b-2800-4860-91de-400dfd178112 on passengers run function inasa:func/place/objective/as_interaction
execute as 7861852b-2800-4860-91de-400dfd178112 on passengers run tag @s add inasa.objective.5

tellraw @s ["",{"text":"Objective 5","color":"#F5CE54"},{"text":" set at your current location.","color":"#EFDADA"}]

function #minecraft:inasa/place_objective/5
