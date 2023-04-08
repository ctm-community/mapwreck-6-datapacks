
function inasa:func/place/objective/generic

execute if entity 5e58eca1-c4ab-4866-9a19-6a961035f9c0 run function inasa:func/remove/objective/10
execute align xyz run summon minecraft:block_display ~.5 ~ ~.5 {Tags:["inasa.objective.10","inasa.object"],UUID:[I;1582886049,-995407770,-1709610346,271972800]}
execute as 5e58eca1-c4ab-4866-9a19-6a961035f9c0 at @s run particle item cyan_wool ~ ~.5 ~ .12 .2 .12 0.001 20 normal
execute summon interaction run ride @s mount 5e58eca1-c4ab-4866-9a19-6a961035f9c0
execute as 5e58eca1-c4ab-4866-9a19-6a961035f9c0 on passengers run function inasa:func/place/objective/as_interaction
execute as 5e58eca1-c4ab-4866-9a19-6a961035f9c0 on passengers run tag @s add inasa.objective.10

tellraw @s ["",{"text":"Objective 10","color":"#F5CE54"},{"text":" set at your current location.","color":"#EFDADA"}]

function #minecraft:inasa/place_objective/10
