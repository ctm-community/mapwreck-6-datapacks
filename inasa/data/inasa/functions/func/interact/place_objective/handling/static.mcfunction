
tag @s add inasa.invalid_placement
execute if score $objective_number inasa.master matches 1 if entity @s[tag=inasa.objective.1,tag=inasa.open] run function inasa:func/interact/place_objective/1
execute if score $objective_number inasa.master matches 2 if entity @s[tag=inasa.objective.2,tag=inasa.open] run function inasa:func/interact/place_objective/2
execute if score $objective_number inasa.master matches 3 if entity @s[tag=inasa.objective.3,tag=inasa.open] run function inasa:func/interact/place_objective/3
execute if score $objective_number inasa.master matches 4 if entity @s[tag=inasa.objective.4,tag=inasa.open] run function inasa:func/interact/place_objective/4
execute if score $objective_number inasa.master matches 5 if entity @s[tag=inasa.objective.5,tag=inasa.open] run function inasa:func/interact/place_objective/5
execute if score $objective_number inasa.master matches 6 if entity @s[tag=inasa.objective.6,tag=inasa.open] run function inasa:func/interact/place_objective/6
execute if score $objective_number inasa.master matches 7 if entity @s[tag=inasa.objective.7,tag=inasa.open] run function inasa:func/interact/place_objective/7
execute if score $objective_number inasa.master matches 8 if entity @s[tag=inasa.objective.8,tag=inasa.open] run function inasa:func/interact/place_objective/8
execute if score $objective_number inasa.master matches 9 if entity @s[tag=inasa.objective.9,tag=inasa.open] run function inasa:func/interact/place_objective/9
execute if score $objective_number inasa.master matches 10 if entity @s[tag=inasa.objective.10,tag=inasa.open] run function inasa:func/interact/place_objective/10
execute if score $objective_number inasa.master matches 11 if entity @s[tag=inasa.objective.11,tag=inasa.open] run function inasa:func/interact/place_objective/11
execute if score $objective_number inasa.master matches 12 if entity @s[tag=inasa.objective.12,tag=inasa.open] run function inasa:func/interact/place_objective/12
execute if score $objective_number inasa.master matches 13 if entity @s[tag=inasa.objective.13,tag=inasa.open] run function inasa:func/interact/place_objective/13
execute if score $objective_number inasa.master matches 14 if entity @s[tag=inasa.objective.14,tag=inasa.open] run function inasa:func/interact/place_objective/14
execute if score $objective_number inasa.master matches 15 if entity @s[tag=inasa.objective.15,tag=inasa.open] run function inasa:func/interact/place_objective/15
execute if score $objective_number inasa.master matches 16 if entity @s[tag=inasa.objective.16,tag=inasa.open] run function inasa:func/interact/place_objective/16

execute if entity @s[tag=inasa.invalid_placement] run function inasa:func/interact/place_objective/invalid
