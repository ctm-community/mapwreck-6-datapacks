# summon 3 wolves
    execute rotated ~ 0 run summon wolf ^1.7 ^ ^1.5 {Tags:["ShikigamiInit","shikiwolf"],Health:40f,Attributes:[{Name:"generic.max_health",Base:40},{Name:"generic.knockback_resistance",Base:1}],ActiveEffects:[{Id:1,Amplifier:2b,Duration:-1,ShowParticles:0b},{Id:28,Amplifier:1b,Duration:100,ShowParticles:0b}]}
    execute rotated ~ 0 run summon wolf ^-1.7 ^ ^1.5 {Tags:["ShikigamiInit","shikiwolf"],Health:40f,Attributes:[{Name:"generic.max_health",Base:40},{Name:"generic.knockback_resistance",Base:1}],ActiveEffects:[{Id:1,Amplifier:2b,Duration:-1,ShowParticles:0b},{Id:28,Amplifier:1b,Duration:100,ShowParticles:0b}]}
    execute rotated ~ 0 run summon wolf ^ ^ ^-1.5 {Tags:["ShikigamiInit","shikiwolf"],Health:40f,Attributes:[{Name:"generic.max_health",Base:40},{Name:"generic.knockback_resistance",Base:1}],ActiveEffects:[{Id:1,Amplifier:2b,Duration:-1,ShowParticles:0b},{Id:28,Amplifier:1b,Duration:100,ShowParticles:0b}]}
# visual & sounds
    execute rotated ~ 0 run particle poof ^1.7 ^ ^1.5 0 1 0 0.2 20
    execute rotated ~ 0 run particle poof ^-1.7 ^ ^1.5 0 1 0 0.2 20
    execute rotated ~ 0 run particle poof ^ ^ ^-1.5 0 1 0 0.2 20
    playsound item.trident.thunder master @s ~ ~ ~ 0.5 1.7
# pet
    execute as @e[type=wolf,tag=ShikigamiInit,sort=nearest,limit=3] run data modify entity @s Owner set from entity @p UUID
    execute as @e[type=wolf,tag=ShikigamiInit,sort=nearest,limit=3] run tag @s remove ShikigamiInit
# remove tag
    tag @s remove shikigami