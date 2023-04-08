
scoreboard players set $i ze 0

execute if block ~ ~ ~ #z:g positioned ~ ~ ~ align xyz positioned ~.5 ~.001 ~.5 run summon marker ~ ~ ~ {CustomName:'{"text":"z"}',Tags:["zll"]}
execute if block ~ ~ ~ #z:r positioned ~ ~ ~ align xyz positioned ~.5 ~.001 ~.5 run summon marker ~ ~ ~ {CustomName:'{"text":"zzz"}',Tags:["zll"]}
execute if block ~ ~ ~ #z:b positioned ~ ~ ~ align xyz positioned ~.5 ~.001 ~.5 run summon marker ~ ~ ~ {CustomName:'{"text":"zz"}',Tags:["zll"]}

execute as @e[type=marker,distance=..2,tag=zll,limit=1,sort=nearest] at @s run function z:b/o
