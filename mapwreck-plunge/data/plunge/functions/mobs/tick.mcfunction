# ALLAY ALLAY ALLAY ALLAY Chaos Incarnate ALLAY ALLAY ALLAY ALLAY
execute as @e[type=allay,tag=plunge,tag=incarnate] at @s run function plunge:mobs/allay/main
# definitely didn't copy my patchwreck mob and slightly modify it, why would i do that?

# Clear items
kill @e[nbt={Item:{tag:{invi:"clear"}}}]

# Because of MC-259754 this is three commands instead of one /clear command
execute as @a[nbt={Inventory:[{tag:{invi:"clear"}}]},scores={Plunge.AllayTimer.=0}] run scoreboard players set @s Plunge.AllayTimer. 3
execute as @a[scores={Plunge.AllayTimer.=1..}] run scoreboard players remove @s Plunge.AllayTimer. 1
execute as @a[scores={Plunge.AllayTimer.=1}] run clear @s #plunge:clear{invi:"clear"}

# Pure Chaos & Absolute Destruction
execute as @e[type=creeper,tag=plunge,tag=absolute] run tag @s add armed
execute as @e[type=creeper,tag=plunge,tag=absolute,tag=armed] on vehicle on passengers run tag @s remove armed
execute as @e[type=creeper,tag=plunge,tag=absolute,tag=armed] at @s run function plunge:mobs/creeper

# Evocation Nation
execute as @e[type=vex] at @s if biome ~ ~ ~ snowy_slopes run function plunge:mobs/vex
execute as @e[type=evoker,tag=plunge,tag=!mounted] unless entity @s[nbt={HandItems:[{id:"minecraft:totem_of_undying"},{}]}] at @s run function plunge:mobs/evoker