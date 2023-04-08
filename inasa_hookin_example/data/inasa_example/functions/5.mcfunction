
title @a title {"text":"5 - Brush Bomb Bastion","color":"#E7EA3E"}
title @s times 15t 80t 20t

execute at @e[tag=inasa.object,tag=yellow_wool] run summon firework_rocket ~ ~.6 ~ {LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:4,Flicker:1b,Colors:[I;16380467]}]}}}}
