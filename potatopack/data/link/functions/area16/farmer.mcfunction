#Happens 1hz on plahyer when near farmer

#face player
execute as @e[distance=..7,type=villager,tag=farmerguy,limit=1] at @s facing entity @p feet run tp @s ~ ~ ~ ~ ~

#say voiceline
execute unless entity @s[tag=farmervoiceline] run tellraw @s [{"text":"[","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"gray"}]}},{"text":"McDonald","color":"yellow","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"gray"}]}},{"text":"]","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"gray"}]}},{"text":" ","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"gray"}]}},{"text":"Thank goodness you're here! My crops 've started to think for themselves and turn against meh! Beat some sense into 'em for me woud'ya?","color":"white","italic":false}]
execute unless entity @s[tag=farmervoiceline] run playsound minecraft:sfx.farmervoiceline player @s ~ ~ ~ 1 0.9 1
execute unless entity @s[tag=farmervoiceline] run tag @s add farmervoiceline
