# timer
    scoreboard players add @s red.shikigami 1
    execute if score @s red.shikigami matches 1..25 rotated ~ 0 run particle dust 1 1 1 2 ^1.7 ^ ^1.5 0 10 0 0.1 10
    execute if score @s red.shikigami matches 1..25 rotated ~ 0 run particle dust 1 1 1 2 ^-1.7 ^ ^1.5 0 10 0 0.1 10
    execute if score @s red.shikigami matches 1..25 rotated ~ 0 run particle dust 1 1 1 2 ^ ^ ^-1.5 0 10 0 0.1 10
# summon
    execute if score @s red.shikigami matches 20 run playsound entity.wolf.ambient master @s ~ ~ ~ 0.4 1.1
    execute if score @s red.shikigami matches 30 run function mash:item/shikigami/summon
    execute if score @s red.shikigami matches 30.. run scoreboard players reset @s red.shikigami