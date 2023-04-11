#makes boss arena biome have music

scoreboard players set temp temp 0
execute store result score temp temp run gamerule commandModificationBlockLimit
execute if score temp temp matches ..2500 run gamerule commandModificationBlockLimit 25641
execute at e1d386aa-2478-413f-9acc-b2fd21c3da45 run fillbiome ~-17 ~-10 ~-16 ~17 ~10 ~16 minecraft:end_barrens