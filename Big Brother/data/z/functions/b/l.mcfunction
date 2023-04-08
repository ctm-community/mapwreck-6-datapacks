
scoreboard players remove $i ze 1

execute if block ~ ~ ~ #z:t positioned ~ ~ ~ align xyz positioned ~.5 ~ ~.5 run function z:q/w

execute if score $i ze matches 1.. positioned ^ ^ ^.05 run function z:b/l

