scoreboard players set $temp pear.var 0

execute store result score $temp pear.var run data get storage pear:inv head.tag.ItemSprinter
execute if score $temp pear.var matches 1.. run scoreboard players operation @s pear.item_sprinter += $temp pear.var