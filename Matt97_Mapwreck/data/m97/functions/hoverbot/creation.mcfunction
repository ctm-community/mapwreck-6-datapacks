



execute store result score m97_dummyPlayer m97_health_query run data get entity @s Health





#REPLACES THE PLACEHOLDER MOB WITH THE ACTUAL HOVER SENTRY

summon bee ~ ~ ~ {Silent:1b,Health:16f,CannotEnterHiveTicks:20000000,AngerTime:20000000,Tags:["m97_hoverbot","m97_init"],Passengers:[{id:"minecraft:skeleton",Silent:1b,Health:16f,Tags:["m97_hoverbot","m97_init"],CustomName:'{"text":"Hover Sentry"}',HandItems:[{id:"minecraft:bow",Count:1b},{}],HandDropChances:[-327.670F,0.085F],ArmorItems:[{},{},{id:"minecraft:netherite_chestplate",Count:1b,tag:{AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;1086903269,-1230355691,-1811126899,1923111982]},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:0,Operation:0,UUID:[I;2033797216,738348157,-1704827179,-1015730379]}]}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1482903061,-271891555,-1800396637,-38271559],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvM2M3NDgzNDYxZTk0OTlkM2VkMTY0NWJmOGEwNjEzNmU2NDg1ODdhZWM4ODc3OTk4NWI4ZTIyYWRlNTcifX19"}]}}}}],ArmorDropChances:[0.085F,0.085F,-327.670F,-327.670F],ActiveEffects:[{Id:14,Amplifier:0b,Duration:1000000,ShowParticles:0b}],Attributes:[{Name:"generic.max_health",Base:16}]}],ActiveEffects:[{Id:14,Amplifier:0b,Duration:1000000,ShowParticles:0b}],Attributes:[{Name:"generic.max_health",Base:16},{Name:"generic.attack_damage",Base:0}]}





execute as @e[tag=m97_init,tag=m97_hoverbot] at @s run function m97:hoverbot/init


teleport @s ~ ~-9999999 ~

kill @s