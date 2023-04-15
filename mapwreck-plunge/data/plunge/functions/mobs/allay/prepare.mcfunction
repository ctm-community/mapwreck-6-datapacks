# RNG here is super basic, can be improved

# Determine wait time
scoreboard players add .Attempts Plunge.AllayRNG. 1
execute store result score @s Plunge.AllayTimer. run time query gametime
scoreboard players operation @s Plunge.AllayTimer. *= . Plunge.AllayRNG.
scoreboard players operation @s Plunge.AllayTimer. *= ! Plunge.AllayRNG.
scoreboard players operation @s Plunge.AllayTimer. /= ? Plunge.AllayRNG.
scoreboard players operation @s Plunge.AllayTimer. *= . Plunge.AllayRNG.
scoreboard players operation @s Plunge.AllayTimer. *= ! Plunge.AllayRNG.
scoreboard players set @s Plunge.AllayMod. 80
scoreboard players operation @s Plunge.AllayTimer. %= @s Plunge.AllayMod.
scoreboard players operation @s Plunge.AllayTimer. += @s Plunge.AllayMod.

tag @s add inviprep