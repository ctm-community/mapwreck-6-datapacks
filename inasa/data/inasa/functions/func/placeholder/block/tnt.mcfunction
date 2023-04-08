
function bb:lib/hide_feedback

execute align xyz positioned ~.5 ~ ~.5 run summon item_display ~ ~ ~ {Tags:["inasa.object"],transformation:[1.000f, 0.000f, 0.000f,0.000f,0.000f, 1.000f, 0.000f,0.500f,0.000f, 0.000f, 1.000f,0.000f,0.000f, 0.000f, 0.000f,1.000f],Passengers:[{id:"minecraft:interaction",width:1.05f,height:1.05f,Tags:["inasa.object","inasa.placeholder.interaction","inasa.placeholder.tnt","inasa.interaction_any"]}],item:{id:"minecraft:item_frame",Count:1b,tag:{CustomModelData:9802}}}
playsound minecraft:block.grass.place block @a[distance=..16] ~ ~ ~ 1 0.9

kill @s
