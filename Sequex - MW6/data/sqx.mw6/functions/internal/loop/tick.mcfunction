execute as @e[type=blaze,tag=sqx.raigen] at @s run function sqx.mw6:mobs/elemental/main

# Activate Storm
execute unless score $obj_claimed sqx.var matches 1 run scoreboard players set $storm_active sqx.var 0
execute unless score $obj_claimed sqx.var matches 1 as @a at @s if predicate sqx.mw6:in_white run scoreboard players set $storm_active sqx.var 1

execute unless score $obj_claimed sqx.var matches 1 if score $storm_active sqx.var matches 0 run weather clear
execute unless score $obj_claimed sqx.var matches 1 if score $storm_active sqx.var matches 1 run weather rain

# Storm Timer
execute unless score $obj_claimed sqx.var matches 1 if score $storm_active sqx.var matches 1 if score $storm_timer sqx.var matches 1 run function sqx.mw6:areas/white/lightning
execute unless score $obj_claimed sqx.var matches 1 if score $storm_active sqx.var matches 1 if score $storm_timer sqx.var matches 2.. run scoreboard players remove $storm_timer sqx.var 1