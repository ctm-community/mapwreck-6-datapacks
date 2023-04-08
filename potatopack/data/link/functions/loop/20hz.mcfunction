#Runs functions at the hz described in the file

#main loops
execute if entity @a[x=-262,y=121,z=160,dx=150,dy=100,dz=160,limit=1] run function link:area16/tick
execute as @a at @s run function link:loop/player20hz
execute as @e[type=!player] at @s run function link:loop/mob20hz
