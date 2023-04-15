advancement revoke @s only pear:use_berry

execute if score @s pear.berry_stacks matches 16.. run tellraw @s {"text":"You're so full you couldn't take another bite!","color":"gold","italic":false}
execute if score @s pear.berry_stacks matches 16.. run give @s glow_berries{display:{Name:'{"text":"Blessed Berries","color":"#FFF06B","italic":false}',Lore:['{"text":" "}','{"text":"Blessed are those who partake","color":"dark_gray","italic":true}','{"text":"in the holy fruit, grown in blood","color":"dark_gray","italic":true}','{"text":"spilled by the great wind god.","color":"dark_gray","italic":true}','{"text":" "}','{"text":"▲ Delta Stream ▲","color":"gray","italic":false,"underlined":true}','{"text":"Eat this fruit to gain a","color":"dark_gray","italic":false}','{"text":"permanent +2% Speed buff.","color":"blue","italic":false}','{"text":"(Max bonus of 30% Speed).","color":"dark_gray","italic":false}']},ItemSpeedberry:1b,Enchantments:[{}]} 1
execute if score @s pear.berry_stacks matches 16.. run effect give @s hunger 1 99

execute unless score @s pear.berry_stacks matches 16.. run scoreboard players add @s pear.berry_stacks 1

playsound minecraft:item.trident.riptide_3 player @s ~ ~ ~ 0.5 1.75
particle minecraft:effect ~ ~0.5 ~ 0.5 0.3 0.5 0.3 20 normal