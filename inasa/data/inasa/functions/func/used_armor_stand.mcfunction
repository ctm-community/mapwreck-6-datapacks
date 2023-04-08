
execute as @e[type=armor_stand,tag=inasa.teleporter.main.place] at @s run function inasa:func/teleporter/main/place_armorstand

advancement revoke @s only inasa:used_armor_stand
