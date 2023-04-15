scoreboard players set $temp pear.var 0

execute store result score $temp pear.var run data get storage pear:inv main.tag.ItemPhdCrossbow
execute if score $temp pear.var matches 1.. run scoreboard players operation @s pear.item_phd += $temp pear.var

execute store result score $temp pear.var run data get storage pear:inv main.tag.ItemHexEater
execute if score $temp pear.var matches 1.. run scoreboard players operation @s pear.item_hex_eater += $temp pear.var

execute store result score $temp pear.var run data get storage pear:inv main.tag.ItemCrasher
execute if score $temp pear.var matches 1.. run scoreboard players operation @s pear.item_crasher += $temp pear.var

execute store result score $temp pear.var run data get storage pear:inv main.tag.ItemSliquifier
execute if score $temp pear.var matches 1.. run scoreboard players operation @s pear.item_sliquifier += $temp pear.var

execute store result score $temp pear.var run data get storage pear:inv main.tag.ItemInfinitePotion
execute if score $temp pear.var matches 1.. run scoreboard players operation @s pear.item_inf_pot += $temp pear.var