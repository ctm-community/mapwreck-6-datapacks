tag @s add check
execute if entity @a[tag=looker,predicate=looking_at] run tag @s add looking_at
tag @s remove check
execute if entity @s[tag=looking_at,tag=!nofriendlyfire] run team join friendlyfire @s