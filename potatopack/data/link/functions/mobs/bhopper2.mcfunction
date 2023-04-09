#bhopper item display
execute if score 5hz gremloop matches 1 run data modify entity @s transformation.translation set value [0.7f,-0.3f,0.6f]
execute if score 5hz gremloop matches 1 facing entity @a[distance=..16,limit=1,sort=nearest] feet run tp @s ~ ~ ~ ~90 0
execute if score 5hz gremloop matches 2 facing entity @a[distance=..3.5,limit=1,sort=nearest] feet run tp @s ~ ~ ~ ~ 0
execute if score 5hz gremloop matches 2 if entity @a[distance=..3.5,limit=1,sort=nearest] run data modify entity @s transformation.translation set value [0.0f,-0.5f,1.2f]

execute if score 10s gremloop matches 1 unless entity @e[distance=..5,type=cow] run kill @s