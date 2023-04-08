
ride @e[type=block_display,distance=..2,limit=1,tag=inasa.new] mount @s
tag @e[type=block_display,distance=..2,limit=1,tag=inasa.new] remove inasa.new

summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Silent:1b,UUID:[I;372260742,887964217,-1673743207,-1252062008]}

execute as 16303f86-34ed-4239-9c3c-b499b55f0cc8 at @s run function inasa:func/teleporter/reco_aux/change_area/as_armor_stand
