#@e

execute if entity @s[type=tnt_minecart] run function z:e/c
execute if entity @s[type=marker] run function z:e/f

execute if entity @s[type=command_block_minecart] run kill @s
execute if entity @s[type=tnt] run kill @s
