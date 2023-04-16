

execute store result score m97_dummyPlayer m97_expected_health run data get entity @s Health



summon bee ~ ~1.2 ~ {Silent:1b,CustomNameVisible:0b,Health:50f,TicksSincePollination:20000000,CannotEnterHiveTicks:20000000,AngerTime:20000000,Tags:["m97_oni"],Passengers:[{id:"minecraft:item_display",Tags:["m97_model"],item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1037505750,-1158002703,-1627983039,-228445480],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTZjMTFmMTlmMTE2ZmJiYmEwNmMwZmEyNmRlMWE5YjM0MGQxMWE3ZTAxZjViZWI1MmI1MGZmNjkzNmU0NjBjOCJ9fX0="}]}}}}}],CustomName:'{"text":"Oni Warrior"}',ActiveEffects:[{Id:11,Amplifier:4b,Duration:20000000,ShowParticles:0b},{Id:14,Amplifier:0b,Duration:20000000,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:50},{Name:generic.knockback_resistance,Base:1},{Name:generic.attack_damage,Base:0}]}

#summon vex ~ ~ ~ {Silent:1b,CustomNameVisible:0b,Health:50f,Tags:["m97_oni"],Passengers:[{id:"minecraft:item_display",Tags:["m97_model"],item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1037505750,-1158002703,-1627983039,-228445480],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTZjMTFmMTlmMTE2ZmJiYmEwNmMwZmEyNmRlMWE5YjM0MGQxMWE3ZTAxZjViZWI1MmI1MGZmNjkzNmU0NjBjOCJ9fX0="}]}}}}}],CustomName:'{"text":"Oni Warrior"}',ActiveEffects:[{Id:11,Amplifier:4b,Duration:20000000,ShowParticles:0b},{Id:14,Amplifier:0b,Duration:20000000,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:50},{Name:generic.knockback_resistance,Base:1},{Name:generic.attack_damage,Base:0}]}




particle minecraft:cloud ~ ~1.2 ~ 0.3 0.3 0.3 0.1 100 force
playsound minecraft:block.lava.extinguish hostile @a ~ ~ ~ 1 0.7
playsound minecraft:entity.ender_eye.death hostile @a ~ ~ ~ 1 1



teleport @s ~ ~1.2 ~
execute at @s as @e[type=bee,sort=nearest,limit=1] run function m97:equalize_health
scoreboard players set @e[type=bee,sort=nearest,limit=1] m97_despawn_timer 0
execute at @s facing ^ ^ ^1 run teleport @e[type=bee,sort=nearest,limit=1] ~ ~ ~ ~ ~

teleport @s ~ ~-9999999 ~

kill @s


