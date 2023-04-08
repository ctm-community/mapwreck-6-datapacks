
scoreboard players set $victory inasa.master 1

function #minecraft:inasa/victory

scoreboard players set $win_anim.timer inasa.master 1
schedule function inasa:func/win/loop 1t