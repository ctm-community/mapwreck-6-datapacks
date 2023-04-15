execute unless score $obj_claimed sqx.var matches 1 run weather clear
execute unless score $obj_claimed sqx.var matches 1 run tellraw @a {"text":"As you brave the lightning's glow, the storm clears up.","color":"gray","italic":true}

execute unless score $obj_claimed sqx.var matches 1 at @s run playsound entity.allay.death master @a ~ ~ ~ 1.0 0.5
execute unless score $obj_claimed sqx.var matches 1 as @a at @s run playsound block.beacon.activate master @s ~ ~ ~ 1.0 1.7
execute unless score $obj_claimed sqx.var matches 1 as @a at @s run playsound block.beacon.activate master @s ~ ~ ~ 1.0 0.5
execute unless score $obj_claimed sqx.var matches 1 as @a at @s run playsound entity.ravager.roar master @s ~ ~ ~ 0.4 0.2

scoreboard players set $obj_claimed sqx.var 1
scoreboard players set $storm_active sqx.var 0
scoreboard players set $storm_timer sqx.var -1