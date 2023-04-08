tag @a remove looking_at
tag @s add looker
execute as @a run function minecraft:looking_at_check
tag @s remove looker
#say @a[tag=looking_at]