#Has wings find cicadas
scoreboard players set temp stunning 0
scoreboard players set temp2 stunning 0
execute as @s[tag=cicadawing1] store result score temp stunning run tp @s @e[distance=..10,limit=1,sort=nearest,tag=cicada,scores={wing1=0}]
execute if score temp stunning matches 1.. at @s positioned ~ ~0.6 ~ run tp @s ^ ^ ^-0.3
execute if score temp stunning matches 1.. at @s run scoreboard players set @e[distance=..2,limit=1,sort=nearest,tag=cicada,scores={wing1=0}] wing1 1
execute as @s[tag=cicadawing2] store result score temp2 stunning run tp @s @e[distance=..10,limit=1,sort=nearest,tag=cicada,scores={wing2=0}]
execute if score temp2 stunning matches 1.. at @s positioned ~ ~0.6 ~ run tp @s ^ ^ ^-0.3
execute if score temp2 stunning matches 1.. at @s run scoreboard players set @e[distance=..2,limit=1,sort=nearest,tag=cicada,scores={wing2=0}] wing2 1
#execute if score temp stunning matches 1.. at @s run say temp1
#execute if score temp2 stunning matches 1.. at @s run say temp2

scoreboard players operation temp2 stunning += temp stunning
execute if score temp2 stunning matches ..0 at @s run kill @s

