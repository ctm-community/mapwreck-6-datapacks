
function inasa:func/place/objective/generic

execute if entity 9adefcd3-4abf-460a-98f2-33451155bab1 run function inasa:func/remove/objective/15
execute align xyz run summon minecraft:block_display ~.5 ~ ~.5 {Tags:["inasa.objective.15","inasa.object"],UUID:[I;-1696662317,1254049290,-1728957627,290831025]}
execute as 9adefcd3-4abf-460a-98f2-33451155bab1 at @s run particle item red_wool ~ ~.5 ~ .12 .2 .12 0.001 20 normal
execute summon interaction run ride @s mount 9adefcd3-4abf-460a-98f2-33451155bab1
execute as 9adefcd3-4abf-460a-98f2-33451155bab1 on passengers run function inasa:func/place/objective/as_interaction
execute as 9adefcd3-4abf-460a-98f2-33451155bab1 on passengers run tag @s add inasa.objective.15

tellraw @s ["",{"text":"Objective 15","color":"#F5CE54"},{"text":" set at your current location.","color":"#EFDADA"}]

function #minecraft:inasa/place_objective/15
