
function inasa:func/place/objective/generic

execute if entity a44baef9-6223-4dd4-bed8-ee0803c39936 run function inasa:func/remove/objective/16
execute align xyz run summon minecraft:block_display ~.5 ~ ~.5 {Tags:["inasa.objective.16","inasa.object"],UUID:[I;-1538543879,1646480852,-1093079544,63150390]}
execute as a44baef9-6223-4dd4-bed8-ee0803c39936 at @s run particle item black_wool ~ ~.5 ~ .12 .2 .12 0.001 20 normal
execute summon interaction run ride @s mount a44baef9-6223-4dd4-bed8-ee0803c39936
execute as a44baef9-6223-4dd4-bed8-ee0803c39936 on passengers run function inasa:func/place/objective/as_interaction
execute as a44baef9-6223-4dd4-bed8-ee0803c39936 on passengers run tag @s add inasa.objective.16

tellraw @s ["",{"text":"Objective 16","color":"#F5CE54"},{"text":" set at your current location.","color":"#EFDADA"}]

function #minecraft:inasa/place_objective/16
