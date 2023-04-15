scoreboard players set $temp pear.var 0

execute store result score $temp pear.var run data get storage pear:inv offh.tag.ItemPhdCrossbow
execute if score $temp pear.var matches 1.. run scoreboard players operation @s pear.item_phd += $temp pear.var

execute store result score $temp pear.var run data get storage pear:inv offh.tag.ItemSliquifier
execute if score $temp pear.var matches 1.. run scoreboard players operation @s pear.item_sliquifier += $temp pear.var

execute store result score $temp pear.var run data get storage pear:inv offh.tag.ItemBloodWolf
execute if score $temp pear.var matches 1.. run scoreboard players operation @s pear.item_bloodwolf += $temp pear.var

execute store result score $temp pear.var run data get storage pear:inv offh.tag.ItemInfinitePotion
execute if score $temp pear.var matches 1.. unless score @s pear.item_inf_pot matches 1 run scoreboard players set @s pear.item_inf_pot 2