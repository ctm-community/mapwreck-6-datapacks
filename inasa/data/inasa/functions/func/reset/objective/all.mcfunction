
function inasa:func/reset/objective/1
function inasa:func/reset/objective/2
function inasa:func/reset/objective/3
function inasa:func/reset/objective/4
function inasa:func/reset/objective/5
function inasa:func/reset/objective/6
function inasa:func/reset/objective/7
function inasa:func/reset/objective/8
function inasa:func/reset/objective/9
function inasa:func/reset/objective/10
function inasa:func/reset/objective/11
function inasa:func/reset/objective/12
function inasa:func/reset/objective/13
function inasa:func/reset/objective/14
function inasa:func/reset/objective/15
function inasa:func/reset/objective/16

scoreboard players set $victory inasa.master 0
scoreboard players set $objectives_placed inasa.master 0
scoreboard players add $win_anim.timer inasa.master 0
schedule clear inasa:func/win/loop

tag @e[tag=inasa.object] remove white_wool
tag @e[tag=inasa.object] remove orange_wool
tag @e[tag=inasa.object] remove magenta_wool
tag @e[tag=inasa.object] remove light_blue_wool
tag @e[tag=inasa.object] remove yellow_wool
tag @e[tag=inasa.object] remove lime_wool
tag @e[tag=inasa.object] remove pink_wool
tag @e[tag=inasa.object] remove gray_wool
tag @e[tag=inasa.object] remove light_gray_wool
tag @e[tag=inasa.object] remove cyan_wool
tag @e[tag=inasa.object] remove purple_wool
tag @e[tag=inasa.object] remove blue_wool
tag @e[tag=inasa.object] remove brown_wool
tag @e[tag=inasa.object] remove green_wool
tag @e[tag=inasa.object] remove red_wool
tag @e[tag=inasa.object] remove black_wool
