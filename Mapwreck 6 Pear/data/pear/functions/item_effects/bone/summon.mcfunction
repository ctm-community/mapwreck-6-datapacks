scoreboard players set @s pear.damage 0

scoreboard players set @s pear.bone_time 901
scoreboard players set @s pear.bone_cooldown 901
scoreboard players add @s pear.bone_cooldown 1500

playsound minecraft:entity.wolf.howl player @a ~ ~ ~ 0.5 1.0
playsound minecraft:entity.zombie_villager.cure player @a ~ ~ ~ 0.35 1.0

summon wolf ^ ^ ^1 {Invulnerable:1b,Owner:[I;1,1,1,1],CollarColor:14b,Tags:["pear.bloodwolf","pear.new"],CustomName:'{"text":"Luna","color":"aqua","bold":true,"italic":false}',HandItems:[{id:"minecraft:bone",Count:1b,tag:{Enchantments:[{id:"minecraft:knockback",lvl:2s}]}},{}]}

data modify storage pear:wolf_name data set value '{"text":"Luna","color":"aqua","bold":true,"italic":false}'

execute if entity @s[name="SuzunaAoi"] run data modify storage pear:wolf_name data set value '{"text":"Panda","color":"blue","bold":true,"italic":false}'
execute if entity @s[name="Rhinowo"] run data modify storage pear:wolf_name data set value '{"text":"Panda","color":"blue","bold":true,"italic":false}'
execute if entity @s[name="PearUhDox"] run data modify storage pear:wolf_name data set value '{"text":"Rio","color":"green","bold":true,"italic":false}'
execute if entity @s[name="RockNRed"] run data modify storage pear:wolf_name data set value '{"text":"uWu","color":"red","bold":true,"italic":false}'


execute as @e[type=wolf,tag=pear.bloodwolf,tag=pear.new] at @s run function pear:item_effects/bone/wolf_setup