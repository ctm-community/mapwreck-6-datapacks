#happens when boss stops digging up

#scores and tags
scoreboard players set digup boss16 0
tag @s remove digup

#face player and move a bit
execute at @s facing entity @p feet run tp @s ^ ^ ^3 ~ ~
execute at @s align y if block ~ ~ ~ #airish run tp @s ~ ~ ~