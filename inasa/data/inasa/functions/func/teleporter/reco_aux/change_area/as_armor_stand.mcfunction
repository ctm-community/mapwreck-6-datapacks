
tp @s ~ ~ ~ facing entity @p

execute if entity @s[y_rotation=-40..40] run tp @s ~ ~ ~1
execute if entity @s[y_rotation=39..139] run tp @s ~-1 ~ ~
execute if entity @s[y_rotation=140..-139] run tp @s ~ ~ ~-1
execute if entity @s[y_rotation=-140..-39] run tp @s ~1 ~ ~

execute at @s run setblock ~ ~-1 ~ bedrock destroy
