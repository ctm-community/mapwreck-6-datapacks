# set buff
    attribute @s generic.attack_speed modifier add a484938d-fedc-4308-9219-98655e05e36b "katana" 0.5 multiply
    summon area_effect_cloud ~ ~ ~ {Duration:6,Age:4,Effects:[{Id:5,Amplifier:0b,Duration:200,ShowParticles:0b,ShowIcon:1b}]}
# visual & sounds
    particle minecraft:poof ~ ~0.4 ~ 0.4 0.1 0.4 0.2 30
    playsound entity.player.levelup master @a ~ ~ ~ 0.5 1.5
    playsound block.enchantment_table.use master @a ~ ~ ~ 1.0 1.3
    playsound block.small_amethyst_bud.break master @a ~ ~ ~ 1.0 0.7
    playsound block.fire.extinguish master @a ~ ~ ~ 0.5 1
# cooldown of 30s
    scoreboard players set @s red.katanaCD 600