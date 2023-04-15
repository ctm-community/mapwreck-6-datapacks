tag @s add mounted
summon phantom ~ ~ ~ {DeathLootTable:"none",Health:8f,Size:1,Tags:["plunge","mount"],CustomName:'{"text":"Peril From Beyond","color":"#FF0000"}',Attributes:[{Name:generic.max_health,Base:8},{Name:generic.attack_damage,Base:6}]}
ride @s mount @e[type=phantom,tag=plunge,tag=mount,sort=nearest,limit=1]