# legendary item - katana
    execute as @a if score @s red.sneak matches 1.. at @s run function mash:item/katana/sneak
    execute as @a if score @s red.katanaCD matches 1.. at @s run function mash:item/katana/tick

# legendary item - shikigami
    execute as @a[tag=shikigami] if score @s red.RC matches 1.. at @s run function mash:item/shikigami/in_use
    execute as @a[tag=!shikigami] if score @s red.RC matches 1.. at @s run function mash:item/shikigami/use
    execute as @a[tag=shikigami] at @s run function mash:item/shikigami/tick
    execute as @e[type=wolf,tag=shikiwolf] at @s run function mash:item/shikigami/wolf

# item - amulet
    execute as @a if predicate mash:amulet at @s run function mash:item/amulet/tick

# mobs
    execute as @e[type=skeleton,tag=red.skeleton] at @s run function mash:mob/skeleton/tick
    execute as @e[type=iron_golem,tag=red.golem] at @s run function mash:mob/iron_golem/tick
    execute as @e[type=bat,tag=red.onibi] at @s run function mash:mob/onibi/tick