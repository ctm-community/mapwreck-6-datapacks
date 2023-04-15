# Spawner

scoreboard objectives add Plunge.SpawnerLink dummy
scoreboard objectives add Plunge.SwarmlordAlive dummy

team add Plunge
team modify Plunge color red

# Mob

scoreboard objectives add Plunge.AllayRNG. dummy
scoreboard players set . Plunge.AllayRNG. 777777789
scoreboard players set ! Plunge.AllayRNG. 102034567
scoreboard players set ? Plunge.AllayRNG. 1000
scoreboard objectives add Plunge.AllayMatch. dummy
scoreboard objectives add Plunge.AllayHealth. dummy
scoreboard objectives add Plunge.AllayMaxHealth. dummy
scoreboard objectives add Plunge.AllayMod. dummy
scoreboard objectives add Plunge.AllayPhase. dummy
scoreboard objectives add Plunge.AllayTimer. dummy

scoreboard objectives add Plunge.CreeperTrigger dummy
scoreboard objectives add Plunge.CreeperTimer dummy

# Item

forceload add 7777777 7777777
setblock 7777777 77 7777777 chest
scoreboard objectives add .inviSPSlot. dummy

# Chaos Spawner Spawn Egg: /give @p endermite_spawn_egg{EntityTag:{DeathLootTable:"none",Tags:["plunge"]}} 1