#generates the boss beneath a random hole

#rng
scoreboard players set in math 1
scoreboard players set in1 math 6
function tools:rng/range

#summon at hole
execute if score out math matches 1 positioned -201 150 245 run function link:boss/generateboss
execute if score out math matches 2 positioned -212 150 238 run function link:boss/generateboss
execute if score out math matches 3 positioned -211 150 228 run function link:boss/generateboss
execute if score out math matches 4 positioned -198 150 227 run function link:boss/generateboss
execute if score out math matches 5 positioned -190 150 233 run function link:boss/generateboss
execute if score out math matches 6 positioned -188 150 245 run function link:boss/generateboss

#No ai
data merge entity ba2946fa-6d05-4370-bdda-340c336e5bef {NoAI:1b}

#facing
execute as ba2946fa-6d05-4370-bdda-340c336e5bef at @s facing -200 165 235 run tp @s ~ ~ ~ ~ ~

#tag
tag ba2946fa-6d05-4370-bdda-340c336e5bef add digup
scoreboard players set digup boss16 0