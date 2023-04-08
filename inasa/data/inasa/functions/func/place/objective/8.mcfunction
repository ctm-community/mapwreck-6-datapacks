
function inasa:func/place/objective/generic

execute if entity d467c5f1-2dec-4ca3-817a-c537f1db9874 run function inasa:func/remove/objective/8
execute align xyz run summon minecraft:block_display ~.5 ~ ~.5 {Tags:["inasa.objective.8","inasa.object"],UUID:[I;-731396623,770460835,-2122660553,-237266828]}
execute as d467c5f1-2dec-4ca3-817a-c537f1db9874 at @s run particle item gray_wool ~ ~.5 ~ .12 .2 .12 0.001 20 normal
execute summon interaction run ride @s mount d467c5f1-2dec-4ca3-817a-c537f1db9874
execute as d467c5f1-2dec-4ca3-817a-c537f1db9874 on passengers run function inasa:func/place/objective/as_interaction
execute as d467c5f1-2dec-4ca3-817a-c537f1db9874 on passengers run tag @s add inasa.objective.8

tellraw @s ["",{"text":"Objective 8","color":"#F5CE54"},{"text":" set at your current location.","color":"#EFDADA"}]

function #minecraft:inasa/place_objective/8
