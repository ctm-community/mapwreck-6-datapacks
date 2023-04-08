
tag @s remove inasa.invalid_placement
tag @s remove inasa.open

execute on vehicle at @s run function bb:lib/set_display_light_from_block

execute as @p[advancements={inasa:interact/right=true},gamemode=!creative] run item modify entity @s weapon.mainhand bb:deduct

setblock ~ ~ ~ barrier
playsound minecraft:block.wool.place block @a[distance=..16] ~ ~ ~ 1 1

effect give @a[distance=..16] resistance 1 4 true

scoreboard players add $objectives_placed inasa.master 1
function inasa:func/interact/place_objective/check_victory
