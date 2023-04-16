

execute store result score m97_dummyPlayer m97_expected_health run data get entity @s Health

summon skeleton ~ ~ ~ {CustomNameVisible:0b,Health:30f,Tags:["m97_kitsune"],CustomName:'{"text":"Kitsune Archer"}',HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:power",lvl:5s},{id:"minecraft:flame",lvl:1s}]}},{}],HandDropChances:[-327.670F,0.085F],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:16777215},AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;-1809776165,-1432665117,-2013021185,-1126187616]}]}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:16711680},AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;1194115248,924337206,-1646782824,355944005]}]}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16777215},AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;449582063,-1438758544,-1953256752,232889316]}]}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1965193623,-2015608693,-1782977678,40921185],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZWUzMDI0MDExMTM0YTc0ZTlmNzlhMjJiYThlNzY3MjUyNWZiNGJmNjVlMTA4YTc3YTRhZWNhMmJjZTAzYjkwMyJ9fX0="}]}}}}],ArmorDropChances:[-327.670F,-327.670F,-327.670F,-327.670F],Attributes:[{Name:generic.max_health,Base:30}]}


particle minecraft:cloud ~ ~ ~ 0.3 0.3 0.3 0.1 100 force
playsound minecraft:block.lava.extinguish hostile @a ~ ~ ~ 1 0.7
playsound minecraft:entity.ender_eye.death hostile @a ~ ~ ~ 1 1


execute as @e[type=skeleton,sort=nearest,limit=1] run function m97:equalize_health
execute at @s facing ^ ^ ^1 run teleport @e[type=skeleton,sort=nearest,limit=1] ~ ~ ~ ~ ~

teleport @s ~ ~-9999999 ~

kill @s


