
function inasa:func/place/objective/generic

execute if entity 7555cdc7-a94b-40d3-a9c5-5399ff4bf9eb run function inasa:func/remove/objective/4
execute align xyz run summon minecraft:block_display ~.5 ~ ~.5 {Tags:["inasa.objective.4","inasa.object"],UUID:[I;1968557511,-1454685997,-1446685799,-11798037]}
execute as 7555cdc7-a94b-40d3-a9c5-5399ff4bf9eb at @s run particle item light_blue_wool ~ ~.5 ~ .12 .2 .12 0.001 20 normal
execute summon interaction run ride @s mount 7555cdc7-a94b-40d3-a9c5-5399ff4bf9eb
execute as 7555cdc7-a94b-40d3-a9c5-5399ff4bf9eb on passengers run function inasa:func/place/objective/as_interaction
execute as 7555cdc7-a94b-40d3-a9c5-5399ff4bf9eb on passengers run tag @s add inasa.objective.4

tellraw @s ["",{"text":"Objective 4","color":"#F5CE54"},{"text":" set at your current location.","color":"#EFDADA"}]

function #minecraft:inasa/place_objective/4
