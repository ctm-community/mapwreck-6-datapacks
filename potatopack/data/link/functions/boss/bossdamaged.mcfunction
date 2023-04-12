#happens when the boss is damaged
execute if score bosstime boss16 matches 210..249 run scoreboard players set bosstime boss16 250
scoreboard players remove hp boss16 1
particle minecraft:item pink_dye{CustomModelData:1} ~ ~1 ~ 0 0 0 0.3 100 force
