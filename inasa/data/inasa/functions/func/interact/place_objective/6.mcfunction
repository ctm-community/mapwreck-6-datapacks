
execute on vehicle run data merge entity @s {block_state:{Name:"minecraft:lime_wool"},width:1f,height:1f,billboard:"fixed",brightness:{sky:0,block:0},transformation:[1.000f, 0.000f, 0.000f,-0.500f,0.000f, 1.000f, 0.000f,0.000f,0.000f, 0.000f, 1.000f,-0.500f,0.000f, 0.000f, 0.000f,1.000f]}

tag @s add lime_wool

function inasa:func/interact/place_objective/generic

summon firework_rocket ~ ~.6 ~ {LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:4,Flicker:1b,Colors:[I;4841560]}]}}}}
