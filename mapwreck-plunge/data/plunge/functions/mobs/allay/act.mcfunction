# Determine held item
scoreboard players add .Attempts Plunge.AllayRNG. 1
execute store result score @s Plunge.AllayPhase. run time query gametime
scoreboard players operation @s Plunge.AllayPhase. *= .Attempts Plunge.AllayRNG.
scoreboard players operation @s Plunge.AllayPhase. *= . Plunge.AllayRNG.
scoreboard players operation @s Plunge.AllayPhase. *= ! Plunge.AllayRNG.
scoreboard players operation @s Plunge.AllayPhase. /= ? Plunge.AllayRNG.
scoreboard players operation @s Plunge.AllayPhase. *= . Plunge.AllayRNG.
scoreboard players operation @s Plunge.AllayPhase. *= ! Plunge.AllayRNG.
scoreboard players set @s Plunge.AllayMod. 10
scoreboard players operation @s Plunge.AllayPhase. %= @s Plunge.AllayMod.

# Change held item
data modify entity @s HandItems[0] set value {id:"minecraft:bedrock",Count:1b,tag:{invi:"clear"}}

# Give throwable items
data modify entity @s Inventory append value {id:"minecraft:bedrock",Count:30b,tag:{invi:"clear",CustomModelData:7777777}}

# Details for clarity
effect give @s glowing 1000000 5 true
particle soul_fire_flame ~ ~ ~ 0 0 0 0.2 10
playsound minecraft:entity.allay.item_given hostile @a ~ ~ ~ 1 1 0

# Wait a bit
scoreboard players set @s Plunge.AllayTimer. 20

tag @s add inviact