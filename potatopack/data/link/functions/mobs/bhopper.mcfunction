#bhopping cows, 20hz


execute if entity @a[distance=..3,limit=1,sort=nearest] run tag @s add angry


execute if entity @s[tag=angry] run function link:mobs/bhopperman

#death
execute if entity @s[nbt={AbsorptionAmount:0.0f}] run function link:mobs/bhopperkill