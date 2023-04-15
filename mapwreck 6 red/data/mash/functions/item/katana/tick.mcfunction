# timer
    scoreboard players remove @s red.katanaCD 1
# visual
    execute if score @s red.katanaCD matches 400.. run particle minecraft:dust_color_transition 0.369 0.141 0.58 2 1 1 1 ~ ~0.2 ~ 0.4 0.2 0.4 0.5 3
    execute if score @s red.katanaCD matches 1 run playsound entity.experience_orb.pickup master @s ~ ~ ~ 0.5 2
    execute if score @s red.katanaCD matches 1 run title @s actionbar "[Netherite Katana] 🗡 Mind Focus 🗡 is ready"
# reset
    execute if score @s red.katanaCD matches 400 run function mash:item/katana/reset