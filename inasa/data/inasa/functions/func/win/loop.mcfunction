
scoreboard players add $win_anim.timer inasa.master 1

effect give @a resistance 2 4 true

execute if score $win_anim.timer inasa.master matches 30 run function #minecraft:inasa/animation/1
execute if score $win_anim.timer inasa.master matches 110 run function #minecraft:inasa/animation/2
execute if score $win_anim.timer inasa.master matches 190 run function #minecraft:inasa/animation/3
execute if score $win_anim.timer inasa.master matches 270 run function #minecraft:inasa/animation/4
execute if score $win_anim.timer inasa.master matches 350 run function #minecraft:inasa/animation/5
execute if score $win_anim.timer inasa.master matches 430 run function #minecraft:inasa/animation/6
execute if score $win_anim.timer inasa.master matches 510 run function #minecraft:inasa/animation/7
execute if score $win_anim.timer inasa.master matches 590 run function #minecraft:inasa/animation/8
execute if score $win_anim.timer inasa.master matches 670 run function #minecraft:inasa/animation/9
execute if score $win_anim.timer inasa.master matches 750 run function #minecraft:inasa/animation/10
execute if score $win_anim.timer inasa.master matches 830 run function #minecraft:inasa/animation/11
execute if score $win_anim.timer inasa.master matches 910 run function #minecraft:inasa/animation/12
execute if score $win_anim.timer inasa.master matches 990 run function #minecraft:inasa/animation/13
execute if score $win_anim.timer inasa.master matches 1070 run function #minecraft:inasa/animation/14
execute if score $win_anim.timer inasa.master matches 1150 run function #minecraft:inasa/animation/15
execute if score $win_anim.timer inasa.master matches 1230 run function #minecraft:inasa/animation/16
execute if score $win_anim.timer inasa.master matches 1310 run function #minecraft:inasa/animation/end_1
execute if score $win_anim.timer inasa.master matches 1390 run function #minecraft:inasa/animation/end_2

execute if score $config.objective_count inasa.master matches 1 if score $win_anim.timer inasa.master matches 108..109 run scoreboard players set $win_anim.timer inasa.master 1309
execute if score $config.objective_count inasa.master matches 2 if score $win_anim.timer inasa.master matches 188..189 run scoreboard players set $win_anim.timer inasa.master 1309
execute if score $config.objective_count inasa.master matches 3 if score $win_anim.timer inasa.master matches 268..269 run scoreboard players set $win_anim.timer inasa.master 1309
execute if score $config.objective_count inasa.master matches 4 if score $win_anim.timer inasa.master matches 348..349 run scoreboard players set $win_anim.timer inasa.master 1309
execute if score $config.objective_count inasa.master matches 5 if score $win_anim.timer inasa.master matches 428..429 run scoreboard players set $win_anim.timer inasa.master 1309
execute if score $config.objective_count inasa.master matches 6 if score $win_anim.timer inasa.master matches 508..509 run scoreboard players set $win_anim.timer inasa.master 1309
execute if score $config.objective_count inasa.master matches 7 if score $win_anim.timer inasa.master matches 588..589 run scoreboard players set $win_anim.timer inasa.master 1309
execute if score $config.objective_count inasa.master matches 8 if score $win_anim.timer inasa.master matches 668..669 run scoreboard players set $win_anim.timer inasa.master 1309
execute if score $config.objective_count inasa.master matches 9 if score $win_anim.timer inasa.master matches 748..749 run scoreboard players set $win_anim.timer inasa.master 1309
execute if score $config.objective_count inasa.master matches 10 if score $win_anim.timer inasa.master matches 828..829 run scoreboard players set $win_anim.timer inasa.master 1309
execute if score $config.objective_count inasa.master matches 11 if score $win_anim.timer inasa.master matches 908..909 run scoreboard players set $win_anim.timer inasa.master 1309
execute if score $config.objective_count inasa.master matches 12 if score $win_anim.timer inasa.master matches 988..989 run scoreboard players set $win_anim.timer inasa.master 1309
execute if score $config.objective_count inasa.master matches 13 if score $win_anim.timer inasa.master matches 1068..1069 run scoreboard players set $win_anim.timer inasa.master 1309
execute if score $config.objective_count inasa.master matches 14 if score $win_anim.timer inasa.master matches 1148..1149 run scoreboard players set $win_anim.timer inasa.master 1309
execute if score $config.objective_count inasa.master matches 15 if score $win_anim.timer inasa.master matches 1228..1229 run scoreboard players set $win_anim.timer inasa.master 1309

execute if score $win_anim.timer inasa.master matches 1..1470 run schedule function inasa:func/win/loop 1t
