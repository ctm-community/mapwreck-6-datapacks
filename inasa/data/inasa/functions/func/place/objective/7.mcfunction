
function inasa:func/place/objective/generic

execute if entity 3e3b0f20-7d0a-41ff-b1d0-38cd4800b234 run function inasa:func/remove/objective/7
execute align xyz run summon minecraft:block_display ~.5 ~ ~.5 {Tags:["inasa.objective.7","inasa.object"],UUID:[I;1044057888,2097824255,-1311754035,1208005172]}
execute as 3e3b0f20-7d0a-41ff-b1d0-38cd4800b234 at @s run particle item pink_wool ~ ~.5 ~ .12 .2 .12 0.001 20 normal
execute summon interaction run ride @s mount 3e3b0f20-7d0a-41ff-b1d0-38cd4800b234
execute as 3e3b0f20-7d0a-41ff-b1d0-38cd4800b234 on passengers run function inasa:func/place/objective/as_interaction
execute as 3e3b0f20-7d0a-41ff-b1d0-38cd4800b234 on passengers run tag @s add inasa.objective.7

tellraw @s ["",{"text":"Objective 7","color":"#F5CE54"},{"text":" set at your current location.","color":"#EFDADA"}]

function #minecraft:inasa/place_objective/7
