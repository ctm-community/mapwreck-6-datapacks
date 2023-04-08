#scarecrow ticking
#Happens on golem


#invulnerable normally
execute if score 1hz gremloop matches 3 run data merge entity @s {Invulnerable:1b}
execute if score 1hz gremloop matches 3 run effect give @s invisibility 100000 0 true

#killing
execute positioned ~-10 ~-10 ~-10 if entity @a[dx=20,dy=20,dz=20,limit=1] at @s run function link:mobs/crowkillcheck
