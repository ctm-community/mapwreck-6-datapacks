execute positioned ~ 0 ~ if entity @s[distance=0..8] at @s run spreadplayers ~ ~ 0 2 under 10 false @s
execute positioned ~ 0 ~ if entity @s[distance=9..16] at @s run spreadplayers ~ ~ 0 2 under 18 false @s
execute positioned ~ 0 ~ if entity @s[distance=17..24] at @s run spreadplayers ~ ~ 0 2 under 26 false @s
execute positioned ~ 0 ~ if entity @s[distance=25..32] at @s run spreadplayers ~ ~ 0 2 under 34 false @s
execute positioned ~ 0 ~ if entity @s[distance=33..40] at @s run spreadplayers ~ ~ 0 2 under 42 false @s
execute positioned ~ 0 ~ if entity @s[distance=41..48] at @s run spreadplayers ~ ~ 0 2 under 50 false @s
execute positioned ~ 0 ~ if entity @s[distance=49..56] at @s run spreadplayers ~ ~ 0 2 under 58 false @s
execute positioned ~ 0 ~ if entity @s[distance=56..64] at @s run spreadplayers ~ ~ 0 2 under 66 false @s
execute positioned ~ 0 ~ if entity @s[distance=65..72] at @s run spreadplayers ~ ~ 0 2 under 74 false @s
execute positioned ~ 0 ~ if entity @s[distance=65..80] at @s run spreadplayers ~ ~ 0 2 under 82 false @s
execute positioned ~ 0 ~ if entity @s[distance=81..96] at @s run spreadplayers ~ ~ 0 2 under 98 false @s
execute positioned ~ 0 ~ if entity @s[distance=97..104] at @s run spreadplayers ~ ~ 0 2 under 106 false @s
execute positioned ~ 0 ~ if entity @s[distance=105..112] at @s run spreadplayers ~ ~ 0 2 under 114 false @s
execute positioned ~ 0 ~ if entity @s[distance=113..120] at @s run spreadplayers ~ ~ 0 2 under 122 false @s
execute positioned ~ 0 ~ if entity @s[distance=121..128] at @s run spreadplayers ~ ~ 0 2 under 130 false @s
execute positioned ~ 0 ~ if entity @s[distance=129..136] at @s run spreadplayers ~ ~ 0 2 under 138 false @s
execute positioned ~ 0 ~ if entity @s[distance=137..144] at @s run spreadplayers ~ ~ 0 2 under 146 false @s
execute positioned ~ 0 ~ if entity @s[distance=145..152] at @s run spreadplayers ~ ~ 0 2 under 154 false @s
execute positioned ~ 0 ~ if entity @s[distance=153..160] at @s run spreadplayers ~ ~ 0 2 under 162 false @s
execute positioned ~ 0 ~ if entity @s[distance=161..168] at @s run spreadplayers ~ ~ 0 2 under 170 false @s
execute positioned ~ 0 ~ if entity @s[distance=169..176] at @s run spreadplayers ~ ~ 0 2 under 178 false @s
execute positioned ~ 0 ~ if entity @s[distance=177..184] at @s run spreadplayers ~ ~ 0 2 under 186 false @s
execute positioned ~ 0 ~ if entity @s[distance=185..192] at @s run spreadplayers ~ ~ 0 2 under 194 false @s
execute positioned ~ 0 ~ if entity @s[distance=193..200] at @s run spreadplayers ~ ~ 0 2 under 202 false @s
execute positioned ~ 0 ~ if entity @s[distance=201..208] at @s run spreadplayers ~ ~ 0 2 under 210 false @s
execute positioned ~ 0 ~ if entity @s[distance=209..216] at @s run spreadplayers ~ ~ 0 2 under 218 false @s
execute positioned ~ 0 ~ if entity @s[distance=217..224] at @s run spreadplayers ~ ~ 0 2 under 226 false @s
execute positioned ~ 0 ~ if entity @s[distance=225..232] at @s run spreadplayers ~ ~ 0 2 under 234 false @s
execute positioned ~ 0 ~ if entity @s[distance=233..240] at @s run spreadplayers ~ ~ 0 2 under 242 false @s
execute positioned ~ 0 ~ if entity @s[distance=241..248] at @s run spreadplayers ~ ~ 0 2 under 250 false @s
execute positioned ~ 0 ~ if entity @s[distance=249..256] at @s run spreadplayers ~ ~ 0 2 under 258 false @s

scoreboard players operation @s ca.summon_id = $corpse_crawler ca.summon_id

execute if score @s ca.summon_id matches 2.. run function cartographer_mob_abilities:death/corpse_crawler/skin

data modify entity @s HandItems[1] set from storage cartographer_mob_abilities:death_effects data.Offhand

tag @s add ca.spread

schedule function cartographer_mob_abilities:death/corpse_crawler/push 1t