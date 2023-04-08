
function inasa:func/place/objective/generic

execute if entity 022de2ae-caf5-405a-9dea-b202bbde2d40 run function inasa:func/remove/objective/9
execute align xyz run summon minecraft:block_display ~.5 ~ ~.5 {Tags:["inasa.objective.9","inasa.object"],UUID:[I;36561582,-889896870,-1645563390,-1143067328]}
execute as 022de2ae-caf5-405a-9dea-b202bbde2d40 at @s run particle item light_gray_wool ~ ~.5 ~ .12 .2 .12 0.001 20 normal
execute summon interaction run ride @s mount 022de2ae-caf5-405a-9dea-b202bbde2d40
execute as 022de2ae-caf5-405a-9dea-b202bbde2d40 on passengers run function inasa:func/place/objective/as_interaction
execute as 022de2ae-caf5-405a-9dea-b202bbde2d40 on passengers run tag @s add inasa.objective.9

tellraw @s ["",{"text":"Objective 9","color":"#F5CE54"},{"text":" set at your current location.","color":"#EFDADA"}]

function #minecraft:inasa/place_objective/9
