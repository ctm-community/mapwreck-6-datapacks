#Triggers when the player gets hunger

#hunger boots effects
effect give @s[tag=lovesfeet] speed 10 0
effect give @s[tag=lovesfeet] strength 10 0
effect give @s[tag=lovesfeet] haste 10 0
execute if entity @s[tag=lovesfeet] run playsound minecraft:entity.player.burp player @a ~ ~ ~ 1 1

#revoke advancement
advancement revoke @s only link:hungerbooties