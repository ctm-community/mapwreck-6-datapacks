#tick

scoreboard players set $g dies.master 0

scoreboard objectives add ze dummy
scoreboard objectives add zk minecraft.custom:minecraft.drop

execute as @e[type=#z:e] at @s run function z:q/b

execute as @a[scores={zk=1..}] at @s run function z:e/h
