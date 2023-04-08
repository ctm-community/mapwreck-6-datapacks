
scoreboard players enable @a[gamemode=creative] give_objectives
scoreboard players enable @a[gamemode=creative] give_dev_items
scoreboard players enable @a[gamemode=creative] updown_switch
scoreboard players enable @a[gamemode=creative] devroom

execute as @e[type=#inasa:tracked,tag=!no_tick] at @s run function inasa:func/the_forbidden_tick/main
