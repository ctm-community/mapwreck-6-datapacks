

execute store result score m97_dummyPlayer m97_expected_health run data get entity @s Health

summon zombie ~ ~-1 ~ {CustomNameVisible:0b,Health:50f,IsBaby:0b,Tags:["m97_oni","ca.rift","ca.single_wave","ca.has_active","ca.ability_haste+","ca.animation--","ca.ability_dmg--"],CustomName:'{"text":"Oni Warrior"}',HandItems:[{id:'minecraft:netherite_axe',Count:1b,tag:{Enchantments:[{id:'minecraft:knockback',lvl:1s}]}},{}],HandDropChances:[-327.670F,0.085F],ArmorItems:[{id:"minecraft:netherite_boots",Count:1b,tag:{AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;-1028559657,1568558973,-1283024796,1523628383]},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:0,Operation:0,UUID:[I;2055568454,2006796376,-1671299462,-2129233417]}]}},{id:"minecraft:netherite_leggings",Count:1b,tag:{AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;-1985639848,-2056436752,-1503768327,1374658508]},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:0,Operation:0,UUID:[I;-915722463,375407465,-1432330725,-1963640836]}]}},{id:"minecraft:netherite_chestplate",Count:1b,tag:{AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;1268515295,734481188,-1411822410,422837501]},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:0,Operation:0,UUID:[I;1129799871,-1579204025,-1542770622,-5431462]}]}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1037505750,-1158002703,-1627983039,-228445480],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTZjMTFmMTlmMTE2ZmJiYmEwNmMwZmEyNmRlMWE5YjM0MGQxMWE3ZTAxZjViZWI1MmI1MGZmNjkzNmU0NjBjOCJ9fX0="}]}}}}],ArmorDropChances:[-327.670F,-327.670F,-327.670F,-327.670F],Attributes:[{Name:generic.max_health,Base:50},{Name:generic.knockback_resistance,Base:0.5},{Name:generic.attack_damage,Base:8},{Name:zombie.spawn_reinforcements,Base:0}]}


particle minecraft:cloud ~ ~ ~ 0.3 0.3 0.3 0.1 100 force
playsound minecraft:block.lava.extinguish hostile @a ~ ~ ~ 1 0.7
playsound minecraft:entity.ender_eye.death hostile @a ~ ~ ~ 1 1



teleport @s ~ ~-1 ~
execute as @e[type=zombie,sort=nearest,limit=1] run function m97:equalize_health
execute at @s facing ^ ^ ^1 run teleport @e[type=zombie,sort=nearest,limit=1] ~ ~ ~ ~ ~

teleport @s ~ ~-9999999 ~

kill @s


