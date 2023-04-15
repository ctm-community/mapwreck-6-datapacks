# timer
    scoreboard players add @s red.amulet 1
# give random effect
    execute if score @s red.amulet matches 20 run function mash:item/amulet/effect
    execute if score @s red.amulet matches 620 run scoreboard players set @s red.amulet 0