# rng
    scoreboard players set $rng_min bbl.rng 1
    scoreboard players set $rng_max bbl.rng 13
    function bb:lib/rng
# playsound
    execute if score $value bbl.rng matches 1..11 run playsound entity.player.levelup master @s ~ ~ ~ 0.4 1.5
    execute if score $value bbl.rng matches 12..13 run playsound item.firecharge.use master @s ~ ~ ~ 0.6 0.7
# effect
    # good
        execute if score $value bbl.rng matches 1 run effect give @s absorption 60 3
        execute if score $value bbl.rng matches 2 run effect give @s fire_resistance 60 0
        execute if score $value bbl.rng matches 3 run effect give @s haste 60 0
        execute if score $value bbl.rng matches 4 run effect give @s health_boost 60 3
        execute if score $value bbl.rng matches 5 run effect give @s invisibility 60 0
        execute if score $value bbl.rng matches 6 run effect give @s jump_boost 60 1
        execute if score $value bbl.rng matches 7 run effect give @s night_vision 60 0
        execute if score $value bbl.rng matches 8 run effect give @s regeneration 60 2
        execute if score $value bbl.rng matches 9 run effect give @s resistance 60 1
        execute if score $value bbl.rng matches 10 run effect give @s speed 60 1
        execute if score $value bbl.rng matches 11 run effect give @s water_breathing 60 0
    # bad
        execute if score $value bbl.rng matches 12 run effect give @s slowness 20 2
        execute if score $value bbl.rng matches 13 run effect give @s weakness 20 2

# reset
    scoreboard players reset $rng_min bbl.rng
    scoreboard players reset $rng_max bbl.rng
    scoreboard players reset $value bbl.rng