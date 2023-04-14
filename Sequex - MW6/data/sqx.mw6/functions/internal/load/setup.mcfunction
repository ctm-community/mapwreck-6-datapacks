scoreboard objectives add sqx.var dummy

execute unless score $obj_claimed sqx.var matches 0.. run scoreboard players set $obj_claimed sqx.var 0
execute unless score $obj_claimed sqx.var matches 1 run scoreboard players set $storm_timer sqx.var 50