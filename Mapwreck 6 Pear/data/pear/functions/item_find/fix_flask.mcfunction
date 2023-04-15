data modify block 4206900 0 4206900 Items set value []
data modify block 4206900 0 4206900 Items append from storage pear:inv refresh_pot.tag.Flask

execute if score $slot pear.var matches 0 run loot replace entity @s hotbar.0 1 mine 4206900 0 4206900 minecraft:air{drop_contents:1b}
execute if score $slot pear.var matches 1 run loot replace entity @s hotbar.1 1 mine 4206900 0 4206900 minecraft:air{drop_contents:1b}
execute if score $slot pear.var matches 2 run loot replace entity @s hotbar.2 1 mine 4206900 0 4206900 minecraft:air{drop_contents:1b}
execute if score $slot pear.var matches 3 run loot replace entity @s hotbar.3 1 mine 4206900 0 4206900 minecraft:air{drop_contents:1b}
execute if score $slot pear.var matches 4 run loot replace entity @s hotbar.4 1 mine 4206900 0 4206900 minecraft:air{drop_contents:1b}
execute if score $slot pear.var matches 5 run loot replace entity @s hotbar.5 1 mine 4206900 0 4206900 minecraft:air{drop_contents:1b}
execute if score $slot pear.var matches 6 run loot replace entity @s hotbar.6 1 mine 4206900 0 4206900 minecraft:air{drop_contents:1b}
execute if score $slot pear.var matches 7 run loot replace entity @s hotbar.7 1 mine 4206900 0 4206900 minecraft:air{drop_contents:1b}
execute if score $slot pear.var matches 8 run loot replace entity @s hotbar.8 1 mine 4206900 0 4206900 minecraft:air{drop_contents:1b}

execute if score $slot pear.var matches -106 run loot replace entity @s weapon.offhand 1 mine 4206900 0 4206900 minecraft:air{drop_contents:1b}

playsound minecraft:block.brewing_stand.brew player @s ~ ~ ~ 1 0.75