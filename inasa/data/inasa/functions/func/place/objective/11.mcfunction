
function inasa:func/place/objective/generic

execute if entity a881a6de-a0bb-43bc-906a-ced8efa757f8 run function inasa:func/remove/objective/11
execute align xyz run summon minecraft:block_display ~.5 ~ ~.5 {Tags:["inasa.objective.11","inasa.object"],UUID:[I;-1467898146,-1598340164,-1872048424,-274245640]}
execute as a881a6de-a0bb-43bc-906a-ced8efa757f8 at @s run particle item purple_wool ~ ~.5 ~ .12 .2 .12 0.001 20 normal
execute summon interaction run ride @s mount a881a6de-a0bb-43bc-906a-ced8efa757f8
execute as a881a6de-a0bb-43bc-906a-ced8efa757f8 on passengers run function inasa:func/place/objective/as_interaction
execute as a881a6de-a0bb-43bc-906a-ced8efa757f8 on passengers run tag @s add inasa.objective.11

tellraw @s ["",{"text":"Objective 11","color":"#F5CE54"},{"text":" set at your current location.","color":"#EFDADA"}]

function #minecraft:inasa/place_objective/11
