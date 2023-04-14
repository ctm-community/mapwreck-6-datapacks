# sneak for 3 secs
    execute if score @s red.sneak matches 60.. run function mash:item/katana/use
# reset sneak timer
    execute unless predicate mash:charge_katana run scoreboard players reset @s red.sneak
    execute if score @s red.katanaCD matches 1.. run scoreboard players reset @s red.sneak
# visual & sounds
    execute if score @s red.sneak matches 20 run particle minecraft:poof ~ ~0.4 ~ 0.2 0.1 0.2 0.05 3
    execute if score @s red.sneak matches 20 run playsound block.fire.extinguish master @a ~ ~ ~ 0.1 1
    execute if score @s red.sneak matches 40 run particle minecraft:poof ~ ~0.4 ~ 0.3 0.1 0.3 0.1 8
    execute if score @s red.sneak matches 40 run playsound block.fire.extinguish master @a ~ ~ ~ 0.3 1