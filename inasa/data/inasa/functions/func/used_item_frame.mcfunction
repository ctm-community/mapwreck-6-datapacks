
execute as @e[type=item_frame,distance=..8,nbt={Item:{id:"minecraft:structure_void",tag:{inasa_dev_item:1}}}] at @s run function inasa:func/placeholder/redstone_dust
execute as @e[type=item_frame,distance=..8,nbt={Item:{id:"minecraft:structure_void",tag:{inasa_dev_item:2}}}] at @s run function inasa:func/placeholder/block/tnt
execute as @e[type=item_frame,distance=..8,nbt={Item:{id:"minecraft:structure_void",tag:{inasa_dev_item:3}}}] at @s run function inasa:func/placeholder/block/stone
execute as @e[type=item_frame,distance=..8,nbt={Item:{id:"minecraft:structure_void",tag:{inasa.teleporter_aux:1}}}] at @s run function inasa:func/teleporter/reco_aux/place_frame

advancement revoke @s only inasa:used_item_frame
