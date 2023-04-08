
function inasa:func/place/objective/generic

execute if entity a96e9029-4d03-4e7f-b2cc-2443aca053b6 run function inasa:func/remove/objective/14
execute align xyz run summon minecraft:block_display ~.5 ~ ~.5 {Tags:["inasa.objective.14","inasa.object"],UUID:[I;-1452371927,1292062335,-1295244221,-1398778954]}
execute as a96e9029-4d03-4e7f-b2cc-2443aca053b6 at @s run particle item green_wool ~ ~.5 ~ .12 .2 .12 0.001 20 normal
execute summon interaction run ride @s mount a96e9029-4d03-4e7f-b2cc-2443aca053b6
execute as a96e9029-4d03-4e7f-b2cc-2443aca053b6 on passengers run function inasa:func/place/objective/as_interaction
execute as a96e9029-4d03-4e7f-b2cc-2443aca053b6 on passengers run tag @s add inasa.objective.14

tellraw @s ["",{"text":"Objective 14","color":"#F5CE54"},{"text":" set at your current location.","color":"#EFDADA"}]

function #minecraft:inasa/place_objective/14
