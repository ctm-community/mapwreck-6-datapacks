
function inasa:func/place/objective/generic

execute if entity b38fa537-0a75-456b-8d75-f4761b5a6263 run function inasa:func/remove/objective/1
execute align xyz run summon minecraft:block_display ~.5 ~ ~.5 {Tags:["inasa.objective.1","inasa.object"],UUID:[I;-1282431689,175457643,-1921649546,458908259]}
execute as b38fa537-0a75-456b-8d75-f4761b5a6263 at @s run particle item white_wool ~ ~.5 ~ .12 .2 .12 0.001 20 normal
execute summon interaction run ride @s mount b38fa537-0a75-456b-8d75-f4761b5a6263
execute as b38fa537-0a75-456b-8d75-f4761b5a6263 on passengers run function inasa:func/place/objective/as_interaction
execute as b38fa537-0a75-456b-8d75-f4761b5a6263 on passengers run tag @s add inasa.objective.1

tellraw @s ["",{"text":"Objective 1","color":"#F5CE54"},{"text":" set at your current location.","color":"#EFDADA"}]

function #minecraft:inasa/place_objective/1
