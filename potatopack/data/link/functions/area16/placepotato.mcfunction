#When player places the specified crop
summon firework_rocket ~ ~ ~ {Life:0,LifeTime:1,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;16514831]}]}}}}
title @a actionbar {"text":"Holy Potato placed!","color":"yellow","bold":true,"italic":false}
scoreboard players add potato boss16 1
function link:area16/updatebossdisplays
