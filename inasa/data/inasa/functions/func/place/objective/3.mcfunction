
function inasa:func/place/objective/generic

execute if entity ecccc4d9-3f8c-4c83-acc2-318e8eb10fc7 run function inasa:func/remove/objective/3
execute align xyz run summon minecraft:block_display ~.5 ~ ~.5 {Tags:["inasa.objective.3","inasa.object"],UUID:[I;-322124583,1066159235,-1396559474,-1900998713]}
execute as ecccc4d9-3f8c-4c83-acc2-318e8eb10fc7 at @s run particle item magenta_wool ~ ~.5 ~ .12 .2 .12 0.001 20 normal
execute summon interaction run ride @s mount ecccc4d9-3f8c-4c83-acc2-318e8eb10fc7
execute as ecccc4d9-3f8c-4c83-acc2-318e8eb10fc7 on passengers run function inasa:func/place/objective/as_interaction
execute as ecccc4d9-3f8c-4c83-acc2-318e8eb10fc7 on passengers run tag @s add inasa.objective.3

tellraw @s ["",{"text":"Objective 3","color":"#F5CE54"},{"text":" set at your current location.","color":"#EFDADA"}]

function #minecraft:inasa/place_objective/3
