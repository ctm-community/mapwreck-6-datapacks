
execute if score $target_light_level dies.master matches 0 run data merge entity @s {brightness:{sky:0,block:0}}
execute if score $target_light_level dies.master matches 1 run data merge entity @s {brightness:{sky:1,block:1}}
execute if score $target_light_level dies.master matches 2 run data merge entity @s {brightness:{sky:2,block:2}}
execute if score $target_light_level dies.master matches 3 run data merge entity @s {brightness:{sky:3,block:3}}
execute if score $target_light_level dies.master matches 4 run data merge entity @s {brightness:{sky:4,block:4}}
execute if score $target_light_level dies.master matches 5 run data merge entity @s {brightness:{sky:5,block:5}}
execute if score $target_light_level dies.master matches 6 run data merge entity @s {brightness:{sky:6,block:6}}
execute if score $target_light_level dies.master matches 7 run data merge entity @s {brightness:{sky:7,block:7}}
execute if score $target_light_level dies.master matches 8 run data merge entity @s {brightness:{sky:8,block:8}}
execute if score $target_light_level dies.master matches 9 run data merge entity @s {brightness:{sky:9,block:9}}
execute if score $target_light_level dies.master matches 10 run data merge entity @s {brightness:{sky:10,block:10}}
execute if score $target_light_level dies.master matches 11 run data merge entity @s {brightness:{sky:11,block:11}}
execute if score $target_light_level dies.master matches 12 run data merge entity @s {brightness:{sky:12,block:12}}
execute if score $target_light_level dies.master matches 13 run data merge entity @s {brightness:{sky:13,block:13}}
execute if score $target_light_level dies.master matches 14 run data merge entity @s {brightness:{sky:14,block:14}}
execute if score $target_light_level dies.master matches 15 run data merge entity @s {brightness:{sky:15,block:15}}

execute on passengers run function dies:func/item_display/update/light_level
