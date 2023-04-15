# timer start
    tag @s add shikigami
# visual & sounds
    playsound item.trident.riptide_2 master @p ~ ~ ~ 0.5 1.5
# clear
    execute if predicate mash:shikigami/mainhand run item modify entity @s weapon.mainhand mash:clear_one
    execute unless predicate mash:shikigami/mainhand if predicate mash:shikigami/offhand run item modify entity @s weapon.offhand mash:clear_one
    scoreboard players reset @s red.RC