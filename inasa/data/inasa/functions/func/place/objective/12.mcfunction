
function inasa:func/place/objective/generic

execute if entity 344c23c6-e1f6-4ec6-be83-a32da1f09e75 run function inasa:func/remove/objective/12
execute align xyz run summon minecraft:block_display ~.5 ~ ~.5 {Tags:["inasa.objective.12","inasa.object"],UUID:[I;877405126,-503951674,-1098669267,-1578066315]}
execute as 344c23c6-e1f6-4ec6-be83-a32da1f09e75 at @s run particle item blue_wool ~ ~.5 ~ .12 .2 .12 0.001 20 normal
execute summon interaction run ride @s mount 344c23c6-e1f6-4ec6-be83-a32da1f09e75
execute as 344c23c6-e1f6-4ec6-be83-a32da1f09e75 on passengers run function inasa:func/place/objective/as_interaction
execute as 344c23c6-e1f6-4ec6-be83-a32da1f09e75 on passengers run tag @s add inasa.objective.12

tellraw @s ["",{"text":"Objective 12","color":"#F5CE54"},{"text":" set at your current location.","color":"#EFDADA"}]

function #minecraft:inasa/place_objective/12
